//
//  signInViewController.swift
//  instagram UI
//
//  Created by Bharat Kakadiya on 05/03/21.
//  Copyright © 2021 Bharat Kakadiya. All rights reserved.
//

import UIKit

class signInViewController: UIViewController {

    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var logIn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
                
       signIn.layer.cornerRadius = 15
       logIn.layer.cornerRadius = 15

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
    

    @IBAction func logIn(_ sender: UIButton) {
        
        let aVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(aVC, animated: true)
      
    }
    @IBAction func signIn(_ sender: UIButton) {
        
               let aVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
               self.navigationController?.pushViewController(aVC, animated: true)
        
    }
    
}
