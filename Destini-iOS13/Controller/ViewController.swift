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
    
    let example = [
        Story(p: "You see a fork in the road.", a: "Take a left", b: "Take a right"),
        Story(p: "Your see a tiger.", a: "Shout for help", b: "Play dead"),
        Story(p: "You find a treasure chest.", a: "Open it", b: "Check for traps!")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = example[0].story
        choiceOne.setTitle(example[0].choice1, for: .normal)
        choiceTwo.setTitle(example[0].choice2, for: .normal)
    }

    

}

