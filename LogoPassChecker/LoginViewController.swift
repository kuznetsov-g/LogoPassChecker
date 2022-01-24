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

    @IBAction func forgotPasswordButton() {
        helpAlert(title: "Do not forget it", message: """
                                                         login: 11
                                                         password: 22
                                                      """)
    }
    
    @IBAction func loginButton() {
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

            self.passwordTextField.text = ""
        }
        forgotAlert.addAction(okAction)
        present(forgotAlert, animated: true)
    }
    
}

//эту часть я списал :( 
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField == loginTextField {
                passwordTextField.becomeFirstResponder()
            } else {
                loginButton()
                performSegue(withIdentifier: "goToWelcomePage", sender: nil)
            }
            return true
            
        }
    
    
    }
