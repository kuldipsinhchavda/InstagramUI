//
//  SearchCollectionViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 08/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {

    @IBOutlet var postImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setImage(_ image: UIImage){
        
        postImage.image = image
        
    }

}
