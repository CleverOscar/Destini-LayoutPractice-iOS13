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
        
        updateUI()
    }
    
    

    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let checkAnswer = storyBrain.nextStory(userChoice: userAnswer)
        
        if (checkAnswer != 0) {
                    sender.backgroundColor = UIColor.green
                    
        } else {
                    sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        
        storyLabel.text = storyBrain.getStory()
        choiceOne.setTitle(storyBrain.choice1(), for: .normal)
        choiceTwo.setTitle(storyBrain.choice2(), for: .normal)
    }

    
}

