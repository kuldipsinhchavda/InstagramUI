//
//  ImageCollectionViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 04/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
 var imgArray = [UIImage]()
    @IBOutlet weak var image1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}

extension ImageCollectionViewCell: UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let imagePic = cell.viewWithTag(1) as! UIImageView
        imagePic.image = imgArray[indexPath.row]
        
        return cell
    }
}
