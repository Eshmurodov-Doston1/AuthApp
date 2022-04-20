//
//  SignUpViewController.swift
//  AuthApp
//
//  Created by macbro on 20/04/22.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       initViews()
    }

    // MARK:- Method
    func initViews(){
        self.view.backgroundColor = UIColor(named:"background")
        addNavigationBar()
    }
    
    func addNavigationBar(){
        title = "Sign Up"
    }
}
