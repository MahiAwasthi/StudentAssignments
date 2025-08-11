//
//  Question.swift
//  ST-1_2310992057
//
//  Created by Guest1 on 05/08/25.
//

import Foundation

struct Response {
    var text: String
    var name: String
    var type: MealReco
}

enum MealReco: Character {
    case Happy = "😊"
    case Sad = "😢"
    case Stressed = "😫"
    case Energetic = "⚡️"
    case Sedentary = "🪑"
    case Light = "🚶‍♀️"
    case Moderate = "🏃‍♀️"
    case Intense = "🏋🏻‍♀️"

    var defination: String {
        switch self {
        case .Happy:
            return "Fresh Fruit with Yogurt"
        case .Sad:
            return "Boiled Chickpea"
        case .Stressed:
            return "Fresh Veggies"
        case .Energetic:
            return "Lettuce Salad"
        case .Sedentary:
            return "A Honey Dazzle"
        case .Light:
            return "Hunk Curd"
        case .Moderate:
            return "Oat Milk"
        case .Intense:
            return "Almond Milk"
        }
    }
}
