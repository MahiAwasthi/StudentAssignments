//
//  resultViewController.swift
//  ST-1_2310992057
//
//  Created by Guest1 on 05/08/25.
//
import UIKit

class resultViewController: UIViewController {

    var mood: MealReco?
    var activity: MealReco?

    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Meal Recommendation"
        
        if let mood = mood, let activity = activity {
            resultLabel.text = "\(mood.defination) and \(activity.defination)"
        } else {
            resultLabel.text = "No meal suggestion available."
        }
    }
}
