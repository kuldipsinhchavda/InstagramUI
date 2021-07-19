//
//  SellAllHistoryViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 12/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class SellAllHistoryViewController: UIViewController {

    var searchInfo = [userData]()
    @IBOutlet var recentSearch: UILabel!
    
    @IBOutlet var clearAll: UIButton!
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search History"
        
        tableView.register(UINib(nibName: "SearchNameTableViewCell", bundle: .main), forCellReuseIdentifier: "SearchNameTableViewCell")
        // Do any additional setup after loading the view.
    }
    

    @IBAction func clearAll(_ sender: UIButton) {
        let alert = UIAlertController(title: "Clear Search History?", message: "You won't ble to undo this.if you clear your search history,you may still see accounts you've searched for as suggested results.", preferredStyle: .alert)
        let action = UIAlertAction(title: "Clear All", style: .default) { (action) in
            
            
            self.tableView.removeFromSuperview()
            self.tableView.isHidden = true
            self.clearAll.isHidden = true
            self.recentSearch.isHidden = true
            
            
        }
        alert.addAction(action)
        let cancelAction = UIAlertAction(title: "Not Now", style: .cancel) { (action:UIAlertAction!) in
                    
                }
                alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    

}
extension SellAllHistoryViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
            return searchInfo.count
         }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchNameTableViewCell", for: indexPath) as! SearchNameTableViewCell
        
            cell.setup(order: searchInfo[indexPath.row])
           
        return cell
    }
}
