//
//  SearchNameTableViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 09/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit
import Kingfisher

class SearchNameTableViewCell: UITableViewCell {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var userName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setSearchResulst(_ image: String , name: String , username : String){
        
        profileImage.image = UIImage(named: "image")
        self.name.text = name
        self.userName.text = username
        
    }
    func setup(order: userData) {
        name.text = order.title
        profileImage.image = order.image
        userName.text = order.userName
    }
}
