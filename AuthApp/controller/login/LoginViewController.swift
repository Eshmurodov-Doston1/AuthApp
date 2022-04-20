//
//  LoginViewController.swift
//  AuthApp
//
//  Created by macbro on 20/04/22.
//

import UIKit

class LoginViewController: UIViewController {

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
        title = "Login"
    }
    
    func callSignUpContorller(){
        let vc:SignUpViewController = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func callListViewController(){
        let vc:ListViewController = ListViewController(nibName: "ListViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }


    // Actions
    @IBAction func signUp(_ sender: Any) {
        callSignUpContorller()
    }
    @IBAction func signInBtn(_ sender: Any) {
        callListViewController()
    }
}
