//
//  RequestTableViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 06/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class RequestTableViewCell: UITableViewCell {

    @IBOutlet var name: UILabel!
    @IBOutlet var image1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setItem(_ image:UIImage,_ text:String)
    
    {
        image1.image = image
        name.text = text
        //image1.layer.cornerRadius = image1.frame.width / 2
        
    }
}
