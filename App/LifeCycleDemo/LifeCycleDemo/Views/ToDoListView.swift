//
//  ToDoListView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/10/30.
//

import SwiftUI

struct ToDoItem : Identifiable {
    var id = UUID()
    var task : String
    var imageName : String
}

struct ToDoListView: View {
    @State private var toggleStatus = true
    
    @State var listData: [ToDoItem] = [
        ToDoItem(task: "Take out trash", imageName: "trash.circle.fill"),
        ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"),
        ToDoItem(task: "Take out trash", imageName: "car.fill"),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notifications")
                    }
                }
                
                NavigationLink(value: listData.count) {
                    Text("View Task Count")
                }
                
                Section(header: Text("To Do Tasks")) {
                    ForEach (listData) { item in
                        NavigationLink(value: item.task) {
                            HStack {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: String.self) { task in
                Text("\(task)")
            }
            .navigationDestination(for: Int.self) { count in
                Text("\(count)")
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
