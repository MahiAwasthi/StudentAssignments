//
//  EventEditorViewController.swift
//  EventDetailsEditor
//
//  Created by Student on 12/08/25.
//

import UIKit

class EventEditorViewController: UIViewController {
    
    @IBOutlet var titleTextField: UITextField!
    
    @IBOutlet var dateTextField: UITextField!
    
    @IBOutlet var locationTextField: UITextField!
    
    @IBOutlet var attendeeCountTextField: UITextField!
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var delegate: EventSummaryVCDelegate
    var editEvent: Event
    
    init?(coder: NSCoder, editEvent: Event, eventSummaryVC: EventSummaryViewController) {
        self.editEvent = editEvent
        self.delegate = eventSummaryVC
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        titleTextField.text = editEvent.title
        dateTextField.text = editEvent.date
        locationTextField.text = editEvent.location
        attendeeCountTextField.text = String(editEvent.attendeeCount)
    }

    @IBAction func deleteData(_ sender: Any) {
        titleTextField.text = ""
        dateTextField.text = ""
        locationTextField.text = ""
        attendeeCountTextField.text = ""
    }
    
    @IBAction func saveButtonTap(_ sender: Any) {
        var updatedEvent: Event = Event()
        updatedEvent.title = titleTextField.text ?? ""
        updatedEvent.date = dateTextField.text ?? ""
        updatedEvent.location = locationTextField.text ?? ""
        updatedEvent.attendeeCount = Int(attendeeCountTextField.text ?? "0") ?? 0
        
        delegate.handleData(event: updatedEvent)
        
        performSegue(withIdentifier: "UnwindToEventSummary", sender: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
