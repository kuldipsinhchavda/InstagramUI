//
//  ActivityViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 05/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {

    var imageArray = [UIImage(named: "profile"), UIImage(named: "image1"), UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image6"),UIImage(named: "welcom"), UIImage(named: "profile"), UIImage(named: "image1"), UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image6"),UIImage(named: "welcom")]
    
    var lable = ["kuldipsinh_chavda", "meet_makdia", "mohit_pipaliya","kuldip", "meet", "mohit","kuldip", "meet", "mohit","kuldip", "meet", "mohit","kuldip", "meet"]
   
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet var yesterdayTableView: UITableView!
  
    @IBOutlet var tableViewHieght: NSLayoutConstraint!
    @IBOutlet var secondTableView: UITableView!
    @IBOutlet var secondTableVIewHieght: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Activity"
    
        tableView1.register(UINib(nibName: "ActivityTableViewCell", bundle: .main), forCellReuseIdentifier: "ActivityTableViewCell")
        secondTableView.register(UINib(nibName: "RequestTableViewCell", bundle: .main), forCellReuseIdentifier: "RequestTableViewCell")
        yesterdayTableView.register(UINib(nibName: "RequestTableViewCell", bundle: .main), forCellReuseIdentifier: "RequestTableViewCell")
        
        DispatchQueue.main.async {
            self.tableViewHieght.constant = CGFloat((self.imageArray.count) * 105)
            self.yesterdayTableView.reloadData()
            
            
            self.secondTableVIewHieght.constant = CGFloat((self.imageArray.count) * 105)
          
            self.secondTableView.reloadData()
            
//            func updateViewConstraints() {
//                self.tableViewHieght.constant = self.tableView.contentSize.height
//                super.updateViewConstraints()
//                self.tableView.reloadData()
//            }
            
        }
        // Do any additional setup after loading the view.
    }
    

}

extension ActivityViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView{
        case tableView1:
            return 1
        case yesterdayTableView:
            return imageArray.count
        case secondTableView:
            return imageArray.count
        default:
           return 1
            
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch tableView {
        
        case tableView1 :                      
            let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityTableViewCell", for: indexPath) as! ActivityTableViewCell
            cell.setItem(imageArray[indexPath.row]!, "Follow Request")
            
            return cell
        case yesterdayTableView :
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "RequestTableViewCell", for: indexPath) as! RequestTableViewCell
            cell.setItem(imageArray[indexPath.row]!, lable[indexPath.row])
            
            return cell

        case secondTableView :
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "RequestTableViewCell", for: indexPath) as! RequestTableViewCell
            cell.setItem(imageArray[indexPath.row]!, lable[indexPath.row])
            
            return cell
            
                default:
            return UITableViewCell()
        }
        
        
        
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
}
