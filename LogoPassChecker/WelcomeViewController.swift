//
//  WelcomeViewController.swift
//  LogoPassChecker
//
//  Created by Георгий Кузнецов on 19.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {


    @IBOutlet weak var welcomeLabel: UILabel!
    var loginName = "."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Have a nace day \(loginName)"

    }

    @IBAction func goBackButton() {
        dismiss(animated: true)
    }
}
