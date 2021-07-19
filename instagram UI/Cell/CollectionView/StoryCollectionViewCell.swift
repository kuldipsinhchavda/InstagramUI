//
//  StoryCollectionViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 04/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var storyImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
      
        
        // Initialization code
    }
    
    func setImage(_ image: UIImage){
        DispatchQueue.main.async {
            self.layer.cornerRadius = self.frame.width / 2
            self.storyImage.layer.cornerRadius = self.storyImage.frame.width / 2
            self.storyImage.image = image
       }
    }
}
