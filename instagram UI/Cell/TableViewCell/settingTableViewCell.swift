//
//  settingTableViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 07/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class settingTableViewCell: UITableViewCell {
    @IBOutlet var sImage: UIImageView!
    
    @IBOutlet var sName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setItem(_ image : UIImage , _ lable : String) {
        
        sImage.image = image
        sName.text = lable
    }
    
}
