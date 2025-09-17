//
//  Event.swift
//  EventDetailsEditor
//
//  Created by Student on 12/08/25.
//

import Foundation

struct Event{
    var title: String
    var date: String
    var location: String
    var attendeeCount: Int
    
    init(){
        self.title = ""
        self.date = ""
        self.location = ""
        self.attendeeCount = 0
    }
    
    init (title: String, date: String, location: String, attendeeCount: Int){
        self.title = title
        self.date = date
        self.location = location
        self.attendeeCount = attendeeCount
    }
}

var events: [Event] = [
    Event(title: "AWS BootCamp", date: "2025-08-12", location: "Bangalore", attendeeCount: 10),
]
