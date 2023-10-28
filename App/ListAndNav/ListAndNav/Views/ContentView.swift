//
//  ContentView.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var toggleStatus = true
    private var listData = ListData()
        
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notification")
                    }
                }
                
                Section(header: Text("To Do Tasks")) {
                    listData
                }
                
                NavigationLink(value: listData.listData.count) {
                    Text("View Task Count")
                }
            }
            .navigationDestination(for: String.self) { task in
                Text("Selected task = \(task)")
            }
            .navigationDestination(for: Int.self) { count in
                Text("Number of tasks = \(count)")
            }
        }
    }
}

#Preview {
    ContentView()
}
