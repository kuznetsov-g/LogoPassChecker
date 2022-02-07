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
    
    private let userData = Users.getInfo()
    
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
        if loginTextField.text != userData.login.login
            && passwordTextField.text != userData.login.password {
            helpAlert(title: "Login denied!", message: "Login or Password incorrect. Please try again")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //guard let navigationController = segue.destination as? UINavigationController else { return }
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.loginName = userData.login.name
            } else if let HobbiesVC = viewController as? HobbiesViewController {
                HobbiesVC.users = userData
            }
            
            else if let navigationVC = viewController as? UINavigationController {
                let personVC = navigationVC.topViewController as! PersonViewController
                personVC.users = userData
                print("poluchilos")
            
        }
        }
                
        
        
        
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
