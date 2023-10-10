//
//  ContentView.swift
//  DemoProject
//
//  Created by 이민호 on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var nameMsg: String = "Input your name!"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(30)
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack {
                TextField("name", text: $nameMsg )
            }
        }
        .padding(30)
        .foregroundColor(.white)
        .background(Color.indigo)
    }
}

#Preview {
    ContentView()
}
