//
//  SettingMenuTableViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 12/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class SettingMenuTableViewCell: UITableViewCell {

    @IBOutlet var menuLable: UILabel!
    @IBOutlet var menuImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setMenuItem(_ image : UIImage , _ lable : String) {
    
        menuImage.image = image
        menuLable.text = lable
    }
}
