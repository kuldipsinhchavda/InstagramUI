//
//  SignUpViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 05/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signUp: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUp.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }
    
//    @IBAction func signUp(_ sender: Any) {
//
////        let aVC = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
////        aVC.navigationController?.pushViewController(aVC, animated: true)
//
//    }
}
