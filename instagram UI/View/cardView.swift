//
//  CardView.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 07/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import Foundation
import UIKit

class cardView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        intialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        intialSetup()
    }
    private func intialSetup(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.1
        cornerRadius = 10
    }
}
