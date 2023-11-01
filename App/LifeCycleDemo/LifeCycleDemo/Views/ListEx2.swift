//
//  ListEx2.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/11/01.
//

import SwiftUI

struct ListEx2: View {
    var body: some View {
        VStack {
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()
            
            List(0..<3, id: \.self) { idx in
                customSection(name: "Section\(idx + 1)", sectionColor: .black, listColor: .blue)
            }            
        }
    }
}

struct customSection: View {
    let name: String
    let sectionColor: Color
    let listColor: Color
    
    var body: some View {
        Section(header: Text(name)
            .foregroundColor(sectionColor)){
                ForEach(1...3, id: \.self) { num in
                    ListItem(name: "Row \(num)", color: listColor)
                }
        }
    }
}


struct ListEx2_Previews: PreviewProvider {
    static var previews: some View {
        ListEx2()
    }
}
