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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func forgotPasswordButton(_ sender: Any) {
        helpAlert(title: "Do not forget it", message: """
                                                         login: 11
                                                         password: 22
                                                      """)
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if loginTextField.text != "11"
         && passwordTextField.text != "22" {
            helpAlert(title: "Login denied!", message: "Login or Password incorrect. Please try again")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.loginName = loginTextField.text ?? "Friend"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
        
    }
}


extension LoginViewController {
    private func helpAlert(title: String, message: String) {
        let forgotAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.loginTextField.text = ""
            self.passwordTextField.text = ""
        }
        forgotAlert.addAction(okAction)
        present(forgotAlert, animated: true)
    }
    
}


extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
}



extension LoginViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            
            textField.delegate = self
            return true
            
            
        }
    
    
    }
