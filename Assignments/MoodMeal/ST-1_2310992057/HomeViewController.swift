//
//  HomeViewController.swift
//  ST-1_2310992057
//
//  Created by Student on 07/08/25.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func suggestMealTapped(_ sender: UIButton) {
           performSegue(withIdentifier: "showQuestions", sender: sender)
       }

}
