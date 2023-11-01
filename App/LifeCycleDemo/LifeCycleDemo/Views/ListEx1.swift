//
//  ListEx1.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/11/01.
//

import SwiftUI

struct ListEx1: View {
    var body: some View {
        VStack {
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()
            
            List {
                ListItem(name: "item1", color: .blue)
                ListItem(name: "item2", color: .blue)
                ListItem(name: "item3", color: .blue)
                ListItem(name: "item4", color: .blue)
                ListItem(name: "item5", color: .blue)
                ListItem(name: "item6", color: .blue)
                ListItem(name: "item7", color: .blue)
                ListItem(name: "item8", color: .blue)
                ListItem(name: "item9", color: .blue)
                ListItem(name: "item10", color: .blue)
            }
        }
    }
}

struct ListItem: View {
    let name: String
    let color: Color
    
    var body: some View {
        Text(name)
            .foregroundColor(color)
    }
}

struct ListEx1_Previews: PreviewProvider {
    static var previews: some View {
        ListEx1()
    }
}
