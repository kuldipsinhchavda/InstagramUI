//
//  ExploreViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 08/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "PostCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "PostCollectionViewCell")
        // Do any additional setup after loading the view.
    }
    


}
extension ExploreViewController : UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostCollectionViewCell", for: indexPath) as! PostCollectionViewCell
      
        return cell
    }
   
  
}
