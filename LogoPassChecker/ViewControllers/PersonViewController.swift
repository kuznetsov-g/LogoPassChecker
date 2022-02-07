//
//  PersonViewController.swift
//  LogoPassChecker
//
//  Created by Георгий Кузнецов on 28.01.2022.
//

import UIKit

class PersonViewController: UIViewController {
    //не знаю почему, но мне не удалось использовать text view. Почему-то на экране не отображался текст, хотя прозрачность и шрифты были указаны верно
    //@IBOutlet weak var aboutMeTextView: UITextView!
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    var users : Users!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aboutMeLabel.text = users.infoAbout.story
        
    }
    

    
}
