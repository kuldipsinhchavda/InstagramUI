//
//  storyViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 04/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class storyViewController: UIViewController {
    static let categoryheader = "Categories"
    
    let imageView = [UIImage(named: "image1"),UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image5"),UIImage(named: "image6"),UIImage(named: "image1"),UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image5"),UIImage(named: "image6")]
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        collectionView.collectionViewLayout = storyViewController.creatLayout()
        
        collectionView.register(UINib(nibName: "StoryCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "StoryCollectionViewCell")
        collectionView.register(UINib(nibName: "PostCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "PostCollectionViewCell")
        
        // Do any additional setup after loading the view.
    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//          super.viewWillAppear(animated)
//          navigationController?.setNavigationBarHidden(true, animated: animated)
//      }
//      
//      override func viewWillDisappear(_ animated: Bool) {
//          super.viewWillDisappear(animated)
//          navigationController?.setNavigationBarHidden(false, animated: animated)
//      }
    
    static func creatLayout() -> UICollectionViewCompositionalLayout {
        
        return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
            if sectionNumber == 0 {
            let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1)))
                item.contentInsets.trailing = 5
                item.contentInsets.bottom = 20
                 
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.2), heightDimension: .absolute(100))
                    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                    let section = NSCollectionLayoutSection(group: group)
                    section.orthogonalScrollingBehavior = .continuous
                    return section
                                                                                                                  
            }
            else {
                
                
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(300)))
               
                item.contentInsets.bottom = 3
            //item.contentInsets.top = 10
            
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(1000)), subitems: [item])
            let section = NSCollectionLayoutSection(group: group)
            
            return section
        
        }
        
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension storyViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageView.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
        cell.setImage(imageView[indexPath.row]!)
        return cell
        }
        
        else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostCollectionViewCell", for: indexPath) as! PostCollectionViewCell
                   cell.setImage(imageView[indexPath.row]!)
                   return cell
        }
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
          return 2
      }
    
}


