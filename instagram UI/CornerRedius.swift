//
//  CornerRedius.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 06/07/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
  @IBInspectable var cornerRadius : CGFloat {
        get {
            return self.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
}
