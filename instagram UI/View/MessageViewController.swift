//
//  MessageViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 07/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet var messageTableView: UITableView!
    
    let imageArray = [UIImage(named: "image1"),UIImage(named: "welcom"),UIImage(named: "welcom"),UIImage(named: "welcom"),UIImage(named: "welcom"),UIImage(named: "welcom"),UIImage(named: "welcom"),UIImage(named: "welcom")]
    let lable = ["Kuldipsinh Chavda" , "Meet Makdia" , "Raviraj Chavda" , "Karan Kuriya", "Rutvik Sorthia" , "Raju Rastogi" , "Rencho" , "Faran" ]
    override func viewDidLoad() {
        super.viewDidLoad()

        messageTableView.register(UINib(nibName: "MessageTableViewCell", bundle: .main), forCellReuseIdentifier: "MessageTableViewCell")
        // Do any additional setup after loading the view.
    }
    

}
extension MessageViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = messageTableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell
        cell.setItem(imageArray[indexPath.row]!, lable[indexPath.row], "Last Seen 1hr Ago")
        return cell
    }
}
