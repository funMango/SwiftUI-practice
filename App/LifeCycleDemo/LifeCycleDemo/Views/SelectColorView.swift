//
//  SelectColorView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 10/26/23.
//

import SwiftUI
import Combine

struct SelectColorView: View {
    var colors: [Color] = [.black, .red, .green, .blue]
    var colorNames = ["Black", "Red", "Green", "Blue"]
        
    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @StateObject private var color = Colors()    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Select your color")
                    .font(.title)
                
                Picker(selection: $colorIndex, label: Text("Color")) {
                    ForEach (0 ..< colorNames.count, id:\.self) { color in
                        Text(colorNames[color])
                            .foregroundColor(colors[color])
                    }
                }
                .pickerStyle(.wheel)
                .onChange(of: colorIndex) { newIndex in
                    color.setColor(colors[colorIndex])
                }
                
                
                NavigationLink(destination: SelectedColorView(color: color)) {
                    Text("Next")
                }
            }
            
        }
    }
}

struct SelectColorView_Previews: PreviewProvider {
    static var previews: some View {
        SelectColorView()
    }
}
