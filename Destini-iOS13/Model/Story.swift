//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var story: String
    var choice1: String
    var choice2: String
    
    init(p: String, a: String, b: String) {
        story = p
        choice1 = a
        choice2 = b
    }
}
