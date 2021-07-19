//
//  SearchProfileViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 09/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

struct userData {
    
    var title: String
    var image: UIImage
    var userName: String
    
    init(title: String,image:UIImage,userName:String) {
        
        self.title = title
        self.userName = userName
        self.image = image
    }
}

class SearchProfileViewController: UIViewController {
    
    @IBOutlet var profileImage: UIImageView!
    var results = [userData]()
    @IBOutlet var tabBar: UITabBar!
    @IBOutlet var recentLbl: UILabel!
    @IBOutlet var seeAll: UIButton!
    @IBOutlet var tableView: UITableView!
    let search = UISearchController()
    
    let user : [userData] = [.init(title: "kuldipsinh chavda", image: UIImage(named: "welcom")!, userName: "kuldipsinh_chavda1"),.init(title: "karan kuriya", image: UIImage(named: "welcom")!, userName: "kk_14"),.init(title: "meet makadia", image: UIImage(named: "welcom")!, userName: "meet_12"),.init(title: "raj yadav", image: UIImage(named: "welcom")!, userName: "Raju_bhai"),.init(title: "rencho", image: UIImage(named: "welcom")!, userName: "RenchodDas"),.init(title: "sorthiya rutvik", image: UIImage(named: "welcom")!, userName: "Tako_14"),.init(title: "kuldipsinh chavda", image: UIImage(named: "welcom")!, userName: "kuldipsinh_chavda1"),.init(title: "karan kuriya", image: UIImage(named: "welcom")!, userName: "kk_14"),.init(title: "meet makadia", image: UIImage(named: "welcom")!, userName: "meet_12"),.init(title: "raj yadav", image: UIImage(named: "welcom")!, userName: "Raju_bhai"),.init(title: "rencho", image: UIImage(named: "welcom")!, userName: "RenchodDas"),.init(title: "sorthiya rutvik", image: UIImage(named: "welcom")!, userName: "Tako_14"),.init(title: "kuldipsinh chavda", image: UIImage(named: "welcom")!, userName: "kuldipsinh_chavda1"),.init(title: "karan kuriya", image: UIImage(named: "welcom")!, userName: "kk_14"),.init(title: "meet makadia", image: UIImage(named: "welcom")!, userName: "meet_12"),.init(title: "raj yadav", image: UIImage(named: "welcom")!, userName: "Raju_bhai"),.init(title: "rencho", image: UIImage(named: "welcom")!, userName: "RenchodDas"),.init(title: "sorthiya rutvik", image: UIImage(named: "welcom")!, userName: "Tako_14")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initSearchResults()
       
        tableView.register(UINib(nibName: "SearchNameTableViewCell", bundle: .main), forCellReuseIdentifier: "SearchNameTableViewCell")
        
        if results.count < 1  {
            seeAll.isHidden = true
            recentLbl.isHidden = true
            tableView.isHidden = true
        }
    
    }
    func initSearchResults() {

        search.loadViewIfNeeded()
        search.searchBar.enablesReturnKeyAutomatically = false
        search.searchBar.returnKeyType = UIReturnKeyType.done
        search.searchResultsUpdater = self
        search.searchBar.delegate = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Search"
        navigationItem.searchController = search
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false

    }
    
    @IBAction func seeAll(_ sender: UIButton) {
        
        let aVc = storyboard?.instantiateViewController(identifier: "SellAllHistoryViewController") as! SellAllHistoryViewController
        
        aVc.searchInfo = results
        
        navigationController?.pushViewController(aVc, animated: true)
    }
    
}

extension SearchProfileViewController : UITableViewDataSource,UITableViewDelegate, UISearchResultsUpdating, UISearchBarDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
            return results.count
         }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchNameTableViewCell", for: indexPath) as! SearchNameTableViewCell
        
            cell.setup(order: results[indexPath.row])
           
        return cell
    }
    func updateSearchResults(for searchController: UISearchController) {
        
        DispatchQueue.main.async {
        
            let searchText = self.search.searchBar.text
                self.results.removeAll()
                for name in self.user{
                    if name.title.lowercased().contains((searchText?.lowercased())!) || name.userName.lowercased().contains((searchText?.lowercased())!)
                    {
                        self.results.append(name)
                        self.seeAll.isHidden = false
                        self.recentLbl.isHidden = false
                        self.tableView.isHidden = false
                    }
                }
         self.tableView.reloadData()
        }
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        results.removeAll()
        tableView.reloadData()
    }
}
