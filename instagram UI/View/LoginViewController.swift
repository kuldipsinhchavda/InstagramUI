//
//  LoginViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 04/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class LoginViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet var email: SkyFloatingLabelTextField!
    @IBOutlet weak var facebook: UIImageView!
    @IBOutlet var password: SkyFloatingLabelTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        facebook.layer.cornerRadius = facebook.frame.width / 2
        loginBtn.layer.cornerRadius = 15
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
             super.viewWillAppear(animated)
             navigationController?.setNavigationBarHidden(true, animated: animated)
         }
         
         override func viewWillDisappear(_ animated: Bool) {
             super.viewWillDisappear(animated)
             navigationController?.setNavigationBarHidden(false, animated: animated)
         }
    

    @IBAction func loginBtn(_ sender: UIButton) {
        
        
        if email.text!.isEmpty || password.text!.isEmpty {
            
            let alert = UIAlertController(title: "Error", message: "Enter both the fields", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Ok", style: .default) { (action) in
                
                
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        else{
            let aVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
            
                   self.navigationController?.pushViewController(aVC, animated: true)
            
        }
        
        
    }

    @IBAction func signIn(_ sender: UIButton) {
        
        let aVC = self.storyboard?.instantiateViewController(withIdentifier: "signInViewController") as! signInViewController
        self.navigationController?.pushViewController(aVC, animated: true)
        
    }
}
