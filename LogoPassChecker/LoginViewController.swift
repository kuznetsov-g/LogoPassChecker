//
//  ViewController.swift
//  LogoPassChecker
//
//  Created by Георгий Кузнецов on 18.01.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPassButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        welcomeVC.loginName = loginTextField.text ?? "Friend"
    }
    
    
    /* @IBAction override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        guard let welcomeVC = unwindSegue.source as? WelcomeViewController else { return }
        loginTextField.text = ""
        passwordTextField.text = ""*/
        
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
        
    }
}

