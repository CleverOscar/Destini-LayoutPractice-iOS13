//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    var story0 = "You see a fork in the road."
    var choice1 = "Take a left"
    var choice2 = "Take a right"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = story0
        
        choiceOne.setTitle(choice1, for: .normal)
        choiceTwo.setTitle(choice2, for: .normal)
    }


}

