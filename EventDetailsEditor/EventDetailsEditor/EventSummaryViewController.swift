//
//  ViewController.swift
//  EventDetailsEditor
//
//  Created by Kshitiz on 12/08/25.
//

import UIKit

protocol EventSummaryVCDelegate: AnyObject {
    func handleData(event: Event)
}

class EventSummaryViewController: UIViewController, EventSummaryVCDelegate {

    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var locationLabel: UILabel!
    
    @IBOutlet var attendeeLabel: UILabel!
    
    func handleData(event: Event) {
        currentEvent = event
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    var currentEvent = events[0]
    
    func updateUI(){
        titleLabel.text = currentEvent.title
        dateLabel.text = currentEvent.date
        locationLabel.text = currentEvent.location
        attendeeLabel.text = String(currentEvent.attendeeCount)
    }
    
    @IBAction func editButtonTap(_ sender: Any) {
        performSegue(withIdentifier: "EditEvent", sender: nil)
    }
    
    @IBSegueAction func EditEventSegueAction(_ coder: NSCoder) -> EventEditorViewController? {
        return EventEditorViewController(coder: coder, editEvent: currentEvent, eventSummaryVC: self)
    }
    
    @IBAction func unwindToEventSummary(_ unwindSegue: UIStoryboardSegue) {
        
    }
}

