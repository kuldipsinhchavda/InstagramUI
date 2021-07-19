//
//  ActivityTableViewCell.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 05/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {

    @IBOutlet weak var followReq: UILabel!
    @IBOutlet weak var image1: UIImageView!
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
        followReq.text = text
        image1.layer.cornerRadius = image1.frame.width / 2
        
    }
    
}
