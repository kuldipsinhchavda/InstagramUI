//
//  MessageTableViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 07/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet var userName: UILabel!
    @IBOutlet var pImage: UIImageView!
    @IBOutlet var lastSeen: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setItem(_ image: UIImage , _ name : String , _ seen : String) {
        
        pImage.image = image
        userName.text = name
        lastSeen.text = seen
        pImage.layer.borderWidth=1.0
        pImage.layer.masksToBounds = false
        pImage.layer.borderColor = UIColor.white.cgColor
        pImage.layer.cornerRadius = pImage.frame.width / 2
        pImage.clipsToBounds = true
    }
    
}
