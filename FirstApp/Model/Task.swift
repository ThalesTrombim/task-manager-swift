//
//  Task.swift
//  FirstApp
//
//  Created by Thales Trombim on 09/12/23.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String;
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Buy something", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func example() -> [Task] {
        [
            Task(title: "Testing"),
            Task(title: "Go ahead"),
            Task(title: "Let's go", isCompleted: true)
        ]
    }
}
