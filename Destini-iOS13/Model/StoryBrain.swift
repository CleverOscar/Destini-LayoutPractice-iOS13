//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(p: "You see a fork in the road.", a: "Take a left", b: "Take a right"),
        Story(p: "Your see a tiger.", a: "Shout for help", b: "Play dead"),
        Story(p: "You find a treasure chest.", a: "Open it", b: "Check for traps!")
    ]
    
    var questionNumber = 0;
    
    mutating func nextStory(userChoice: String) -> Int {
        
        if userChoice == stories[questionNumber].choice1 {
            questionNumber += 1
        } else {
            questionNumber += 2
        }
        
        return questionNumber
    }
    
    func getStory() -> String {
        return stories[questionNumber].story
    }
    
    func choice1() -> String {
        return stories[questionNumber].choice1
    }
    
    func choice2() -> String {
        return stories[questionNumber].choice2
    }
}
