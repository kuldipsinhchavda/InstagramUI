//
//  PostCollectionViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 04/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var commentImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setImage(_ image: UIImage){
           //self.layer.cornerRadius = self.frame.width / 2
           profileImage.image = image
           mainImage.image = image
           profileImage.layer.cornerRadius = profileImage.frame.width / 2
        commentImage.image = image
        commentImage.layer.cornerRadius = commentImage.frame.width / 2
       }

}
