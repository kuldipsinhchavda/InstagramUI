//
//  ViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 03/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet var editProfile: UIButton!
    let imagePicker = UIImagePickerController()
    let containerView = UIView()
    var slideUpView = UITableView()
    let slideUpViewHeight: CGFloat = 400
    @IBOutlet weak var profileImage: UIImageView!
    var imageArray = [UIImage(named: "profile"), UIImage(named: "image1"), UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image6"),UIImage(named: "welcom"), UIImage(named: "profile"), UIImage(named: "image1"), UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image6"),UIImage(named: "welcom")]
    
    let settingImage = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7")]
    let lable = ["Settings" , "Archive" , "Your Activity" , "QR Code", "Saved" , "Close Friends" , "COVID-19 Information Center"]
    
    
    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        slideUpView.isScrollEnabled = true
        slideUpView.cornerRadius = 10
         slideUpView.delegate = self
         slideUpView.dataSource = self
        slideUpView.register(UINib(nibName: "SettingMenuTableViewCell", bundle: .main), forCellReuseIdentifier: "SettingMenuTableViewCell")
        
        imagePicker.delegate = self
        profileImage.layer.cornerRadius = profileImage.frame.size.width/2
        editProfile.layer.borderWidth = 1.0
        editProfile.clipsToBounds = true
        editProfile.layer.masksToBounds = false
        editProfile.layer.borderColor = UIColor.gray.cgColor
        editProfile.layer.cornerRadius = 10
        containerView.reloadInputViews()
    
       

    }

    @IBAction func addPhoto(_ sender: UIBarButtonItem) {
        
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        self.present(imagePicker, animated: true)
        
    }
    
     func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
         let tempImage:UIImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        profileImage.contentMode = .scaleToFill
        profileImage.image  = tempImage
        dismiss(animated: true, completion: nil)
         guard let selectedImage = info[.originalImage] as? UIImage else {
                 print("Image not found!")
                 return
         }
        profileImage.image = selectedImage
 }
     
     func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
         dismiss(animated: true, completion: nil)
         
         }
    
    @IBAction func settingMenu(_ sender: UIBarButtonItem) {
        
        containerView.isHidden = false
        slideUpView.isHidden = false
        let customView = UIView(frame: CGRect(x: slideUpViewHeight / 2, y: 10, width: 30, height: 5))
        customView.backgroundColor = .gray
        self.slideUpView.addSubview(customView)
        let window = UIApplication.shared.keyWindow
        containerView.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        containerView.frame = self.view.frame
        window?.addSubview(containerView)
        
        let tapGesture = UITapGestureRecognizer(target: self
                                                , action: #selector(slideUPTapped))
        
        containerView.addGestureRecognizer(tapGesture)
        
        containerView.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseOut, animations: {
            self.containerView.alpha = 0.8
        }, completion: nil)
        
        let screenSize = UIScreen.main.bounds.size
          slideUpView.frame = CGRect(x: 0, y: screenSize.height, width: screenSize.width, height: slideUpViewHeight)
          slideUpView.separatorStyle = .none
          window?.addSubview(slideUpView)
        UIView.animate(withDuration: 0.5,
                       delay: 0, usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 1.0,
                       options: .curveEaseInOut, animations: {
          self.containerView.alpha = 0.8
          self.slideUpView.frame = CGRect(x: 0, y: screenSize.height - self.slideUpViewHeight, width: screenSize.width, height: self.slideUpViewHeight)
        }, completion: nil)
    }
    
    @objc func slideUPTapped(){
        
        let screenSize = UIScreen.main.bounds.size
        UIView.animate(withDuration: 0.5,
                       delay: 0, usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 1.0,
                       options: .curveEaseInOut, animations: {
          self.containerView.alpha = 0
        }, completion: nil)
       
        UIView.animate(withDuration: 0.5,
                       delay: 0, usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 1.0,
                       options: .curveEaseInOut, animations: {
          self.containerView.alpha = 0
          self.slideUpView.frame = CGRect(x: 0, y: screenSize.height, width: screenSize.width, height: self.slideUpViewHeight)
        }, completion: nil)
    }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let imagePic = cell.viewWithTag(1) as! UIImageView
        imagePic.image = imageArray[indexPath.row]
        
        return cell
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection
         section: Int) -> Int {
    return lable.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath:
         IndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCell(withIdentifier: "SettingMenuTableViewCell",
      for: indexPath) as! SettingMenuTableViewCell
      
    cell.setMenuItem(settingImage[indexPath.row]! , lable[indexPath.row])
  
  return cell
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let aVc = storyboard?.instantiateViewController(identifier: "SettingViewController")
        containerView.isHidden = true
        slideUpView.isHidden = true
        navigationController?.pushViewController(aVc!, animated: true)
        
    }
  func tableView(_ tableView: UITableView, heightForRowAt
         indexPath: IndexPath) -> CGFloat {
    return 50
  }
}
