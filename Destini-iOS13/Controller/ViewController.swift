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
    
    let leftTurn = 1;
    let rightTurn = 2;
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = storyBrain.getStory()
        choiceOne.setTitle(storyBrain.choice1(), for: .normal)
        choiceTwo.setTitle(storyBrain.choice2(), for: .normal)
    }
    
    

    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle;
        
        
      
        
    }

    
}

