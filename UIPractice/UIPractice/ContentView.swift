//
//  ContentView.swift
//  UIPractice
//
//  Created by 이민호 on 10/13/23.
//

import SwiftUI
import Combine

struct ContentView: View {
    var body: some View {
        
        @ObservedObject var demoData: DemoData = DemoData("John")
        
        VStack {
            Text("\(demoData.currentUser), number: \(demoData.userCount)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
