//
//  TaskListView.swift
//  FirstApp
//
//  Created by Thales Trombim on 12/12/23.
//

import SwiftUI

struct TaskListView: View {
    
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack(content: {
                Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                Text(task.title)
            })
        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: Task.example())
}
