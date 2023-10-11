//
//  ContentView.swift
//  project1
//
//  Created by 이민호 on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                List {
                    NavigationLink("시간계산기", destination: ex1())
                    NavigationLink("급여계산기", destination: ex2())
                }
                .navigationTitle("List")
            }
        }
    }
}

#Preview {
    ContentView()
}
