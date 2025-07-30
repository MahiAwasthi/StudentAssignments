//
//  Question.swift
//  Personality_Quiz
//
//  Created by Student on 25/07/25.
//

import Foundation




struct Question{
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType{
    case single, multiple,ranged
}

struct Answer{
    var text: String
    var type: AnimalType
}

enum AnimalType: Character{
    case lion = "🦁", pig = "🐷", jellyfish = "🪼", frog = "🐸"
    
    var definition: String{
        switch self {
        case .lion:
            return "Your majestic like a lion"
        case .pig:
            return "Mischievious like a pig"
        case .jellyfish:
            return "You love everything that's full of energy"
        case .frog:
            return "You are wise and calm"
        }
    }
}


