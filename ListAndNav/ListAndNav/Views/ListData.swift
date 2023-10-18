//
//  ListData.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import SwiftUI

struct ListData: View {
    
    @State var listData: [ToDoItem] = [
        ToDoItem(task: "Hello there", imageName: "person.icloud"),
        ToDoItem(task: "Think possiblity", imageName: "lasso"),
        ToDoItem(task: "Save your memory", imageName: "folder.fill"),
    ]
    
    
    var body: some View {
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

#Preview {
    ListData()
}
