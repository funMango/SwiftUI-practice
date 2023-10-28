//
//  ContentView.swift
//  SwiftUIDemoApp
//
//  Created by 이민호 on 10/13/23.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colorNames = ["Black", "Red", "Green", "Blue"]
    
    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 3), value: rotation)
                .foregroundColor(colors[colorIndex])
            
            Spacer()
            Divider()
            
            Slider(value: $rotation, in: 0...360, step: 0.1)
                .padding()
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach (0 ..< colorNames.count, id:\.self) {
                    Text(colorNames[$0])
                        .foregroundColor(colors[$0])
                }
            }
            .pickerStyle(.wheel)
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
