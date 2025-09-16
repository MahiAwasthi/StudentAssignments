//
//  ToDo.swift
//  List
//
//  Created by Student on 01/09/25.
//

import UIKit

struct ToDo{
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var notes: String?
    
    static func == (lhs: ToDo, rhs: ToDo) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func loadToads() -> [ToDo]? {
        return nil
    }
    
    static func loadSampleToads() -> [ToDo] {
        let toDo1 = ToDo(title: "To-Do 1", isCompleted: false, dueDate: Date(), notes: "Notes 1")
        let toDo2 = ToDo(title: "To-Do 2", isCompleted: true, dueDate: Date(), notes: "Notes 2")
        let toDo3 = ToDo(title: "To-Do 3", isCompleted: false, dueDate: Date(), notes: "Notes 3")

        return [toDo1, toDo2, toDo3]
    }
}
