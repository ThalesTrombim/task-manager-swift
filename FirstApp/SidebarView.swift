//
//  SidebarView.swift
//  FirstApp
//
//  Created by Thales Trombim on 09/12/23.
//

import SwiftUI

struct SidebarView: View {
  
  let userCreateGroups: [TaskGroup]
  
  @State private var selection = TaskSection.all
  
  var body: some View {
    List(selection: $selection) {
      Section("Favorites") {
        
        ForEach(TaskSection.allCases) { selection in
          Label(selection.displayName, systemImage: selection.iconName)
            .tag(selection)
        }
      }
      
      Section("Your Groups") {
        ForEach(userCreateGroups) { group in
          Label(group.title, systemImage: "folder")
            .tag(TaskSection.list(group))
        }
      }
    }
  }
}

#Preview {
  SidebarView(userCreateGroups: TaskGroup.examples())
    .listStyle(.sidebar)
}
