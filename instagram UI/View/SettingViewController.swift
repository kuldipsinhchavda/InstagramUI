//
//  SettingViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 07/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var settingTableView: UITableView!
    let imageArray = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8")]
    let lable = ["Follow and Invite Friends" , "Notifications" , "Privacy" , "Ads", "Accounts" , "Help" , "About" , "Theme" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingTableView.register(UINib(nibName: "settingTableViewCell", bundle: .main), forCellReuseIdentifier: "settingTableViewCell")
        
        // Do any additional setup after loading the view.
    }

    @IBAction func logOut(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "LogOut", message: "Log Out of Instagram?", preferredStyle: .alert)
        let action = UIAlertAction(title: "Log Out", style: .destructive) { (action) in
            let aVc = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
          
            self.navigationController?.pushViewController(aVc, animated: true)
        }
        alert.addAction(action)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction!) in
                    print("Cancel button tapped");
                }
                alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
        self.tabBarController?.tabBar.isHidden = true
        
    }
}
extension SettingViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = settingTableView.dequeueReusableCell(withIdentifier: "settingTableViewCell", for: indexPath) as! settingTableViewCell
        cell.setItem(imageArray[indexPath.row]!,lable[indexPath.row])
        return cell
        
    }
}
