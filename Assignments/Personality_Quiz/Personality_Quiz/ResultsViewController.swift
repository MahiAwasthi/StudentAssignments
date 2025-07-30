        //
//  ResultsViewController.swift
//  Personality_Quiz
//
//  Created by Student on 23/07/25.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDefinition: UILabel!
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResults()
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResults() {
        
        let frequencyOfAnswers=responses.reduce(into:[AnimalType: Int] ()){ counts, response in
            if let existingCount = counts[response.type] {
                counts[response.type] = existingCount + 1
            } else {
                counts[response.type] = 1
            }}
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {(pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        resultDefinition.text = mostCommonAnswer.definition
        
    }

}
