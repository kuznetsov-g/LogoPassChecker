//
//  HobbiesViewController.swift
//  LogoPassChecker
//
//  Created by Георгий Кузнецов on 28.01.2022.
//

import UIKit

class HobbiesViewController: UIViewController {
   
    @IBOutlet weak var hobbieTitle: UILabel!
    @IBOutlet weak var hobbieLabel: UILabel!
    @IBOutlet weak var randomHobbieButton: UIButton!
    
    var users : Users!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbieTitle.text = "Push the button"
        hobbieLabel.text = ""
        
    }
    

    @IBAction func getRandomFact(_ sender: Any) {
        let randomNum = Int.random(in: 0...users.hobbies.count-1)
        hobbieTitle.text = users.hobbies[randomNum].title
        hobbieLabel.text = users.hobbies[randomNum].story
    }
    

    
}
