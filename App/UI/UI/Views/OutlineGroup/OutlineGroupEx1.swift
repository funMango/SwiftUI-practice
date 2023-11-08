//
//  OutlineGroupDemoView.swift
//  UI
//
//  Created by 이민호 on 2023/11/08.
//

import SwiftUI

struct alphabet: Identifiable {
    var id = UUID()
    var value: String
    var children: [alphabet]?
}

let alphabets : [alphabet] = [
    alphabet(value: "A", children: [
        alphabet(value: "B"),
        alphabet(value: "C", children: [
            alphabet(value: "D"),
            alphabet(value: "E")
        ]),
    ]),
    alphabet(value: "F")
    
]

struct OutlineGroupEx1: View {
    var body: some View {
        List(alphabets, children: \.children) { alphabet in
            Text(alphabet.value)
        }
    }
}

struct OutlineGroupEx1_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroupEx1()
    }
}
