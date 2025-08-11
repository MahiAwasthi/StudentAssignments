//
//  QuestionViewController.swift
//  ST-1_2310992057
//
//  Created by Guest1 on 05/08/25.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var buttonStack1: UIStackView!
    @IBOutlet weak var buttonStack2: UIStackView!

    @IBOutlet weak var stack1Label1: UILabel!
    @IBOutlet weak var stack1Label2: UILabel!
    @IBOutlet weak var stack1Label3: UILabel!
    @IBOutlet weak var stack1Label4: UILabel!
    @IBOutlet weak var stack1Button1: UIButton!
    @IBOutlet weak var stack1Button2: UIButton!
    @IBOutlet weak var stack1Button3: UIButton!
    @IBOutlet weak var stack1Button4: UIButton!

    @IBOutlet weak var stack2Label1: UILabel!
    @IBOutlet weak var stack2Label2: UILabel!
    @IBOutlet weak var stack2Label3: UILabel!
    @IBOutlet weak var stack2Label4: UILabel!
    @IBOutlet weak var stack2Button1: UIButton!
    @IBOutlet weak var stack2Button2: UIButton!
    @IBOutlet weak var stack2Button3: UIButton!
    @IBOutlet weak var stack2Button4: UIButton!

    var questionIndex = 0
    var selectedMood: MealReco?
    var selectedActivity: MealReco?

    let moodAnswers: [Response] = [
        Response(text: "😊", name: "Happy", type: .Happy),
        Response(text: "😢", name: "Sad", type: .Sad),
        Response(text: "😫", name: "Stressed", type: .Stressed),
        Response(text: "⚡️", name: "Energetic", type: .Energetic)
    ]

    let activityAnswers: [Response] = [
        Response(text: "🪑", name: "Sedentary", type: .Sedentary),
        Response(text: "🚶‍♀️", name: "Light", type: .Light),
        Response(text: "🏃‍♀️", name: "Moderate", type: .Moderate),
        Response(text: "🏋🏻‍♀️", name: "Intense", type: .Intense)
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        if questionIndex == 0 {
            buttonStack1.isHidden = false
            buttonStack2.isHidden = true
            updateButtonStack1(using: moodAnswers)
            navigationItem.title = "Select your mood"
        } else if questionIndex == 1 {
            buttonStack1.isHidden = true
            buttonStack2.isHidden = false
            updateButtonStack2(using: activityAnswers)
            navigationItem.title = "Select your activity"
        }
    }

    func updateButtonStack1(using answers: [Response]) {
        let font = UIFont.systemFont(ofSize: 70)
        stack1Button1.setAttributedTitle(NSAttributedString(string: answers[0].text, attributes: [.font: font]), for: .normal)
        stack1Button2.setAttributedTitle(NSAttributedString(string: answers[1].text, attributes: [.font: font]), for: .normal)
        stack1Button3.setAttributedTitle(NSAttributedString(string: answers[2].text, attributes: [.font: font]), for: .normal)
        stack1Button4.setAttributedTitle(NSAttributedString(string: answers[3].text, attributes: [.font: font]), for: .normal)

        stack1Label1.text = answers[0].name
        stack1Label2.text = answers[1].name
        stack1Label3.text = answers[2].name
        stack1Label4.text = answers[3].name
    }


    func updateButtonStack2(using answers: [Response]) {
        let font = UIFont.systemFont(ofSize: 70)

        stack2Button1.setAttributedTitle(NSAttributedString(string: answers[0].text, attributes: [.font: font]), for: .normal)
        stack2Button2.setAttributedTitle(NSAttributedString(string: answers[1].text, attributes: [.font: font]), for: .normal)
        stack2Button3.setAttributedTitle(NSAttributedString(string: answers[2].text, attributes: [.font: font]), for: .normal)
        stack2Button4.setAttributedTitle(NSAttributedString(string: answers[3].text, attributes: [.font: font]), for: .normal)

        stack2Label1.text = answers[0].name
        stack2Label2.text = answers[1].name
        stack2Label3.text = answers[2].name
        stack2Label4.text = answers[3].name
    }



    @IBAction func stack1ButtonTapped(_ sender: UIButton) {
        guard questionIndex == 0 else { return }

        switch sender {
        case stack1Button1: selectedMood = .Happy
        case stack1Button2: selectedMood = .Sad
        case stack1Button3: selectedMood = .Stressed
        case stack1Button4: selectedMood = .Energetic
        default: break
        }

        questionIndex = 1
        updateUI()
    }

    @IBAction func stack2ButtonTapped(_ sender: UIButton) {
        guard questionIndex == 1 else { return }

        switch sender {
        case stack2Button1: selectedActivity = .Sedentary
        case stack2Button2: selectedActivity = .Light
        case stack2Button3: selectedActivity = .Moderate
        case stack2Button4: selectedActivity = .Intense
        default: break
        }

        performSegue(withIdentifier: "showResult", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult",
           let resultVC = segue.destination as? resultViewController {
            resultVC.mood = selectedMood
            resultVC.activity = selectedActivity
        }
    }
}
