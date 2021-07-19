//
//  SearchViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 05/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit
import CHTCollectionViewWaterfallLayout

class SearchViewController: UIViewController {
    @IBOutlet var searchView: UIView!
    @IBOutlet var SearchBar: UISearchBar!
    var imageArray = [UIImage(named: "profile"), UIImage(named: "image1"), UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image6"),UIImage(named: "welcom"), UIImage(named: "profile"), UIImage(named: "image1"), UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image6"),UIImage(named: "welcom")]
    
    
    @IBOutlet var searchCollectoinView: UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
 
        var layout = CHTCollectionViewWaterfallLayout()
        layout.itemRenderDirection = .leftToRight
        layout.columnCount = 2
        searchCollectoinView.register(UINib(nibName: "SearchCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "SearchCollectionViewCell")
//        let TapGesture = UITapGestureRecognizer()
//        SearchBar.addGestureRecognizer(TapGesture)
//        TapGesture.addTarget(self, action: #selector(searchItem))
        // Do any additional setup after loading the view.
    }
    

    @IBAction func searchName(_ sender: UIButton) {
        
        let aVc = storyboard?.instantiateViewController(identifier: "SearchProfileViewController")
        
        navigationController?.pushViewController(aVc!, animated: true)
    }


  
}
extension SearchViewController : UICollectionViewDataSource,UICollectionViewDelegate{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = searchCollectoinView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionViewCell", for: indexPath) as! SearchCollectionViewCell
        cell.setImage(imageArray[indexPath.row]!)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width / 2
                      ,height: 250)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let aVc = storyboard?.instantiateViewController(identifier: "ExploreViewController") as! ExploreViewController
        navigationController?.pushViewController(aVc, animated: true)
        
    }
}
