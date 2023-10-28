//
//  ex2.swift
//  ex1
//
//  Created by 이민호 on 10/10/23.
//

import SwiftUI

struct ex2: View {
    @State private var inputOrange = ""
    @State private var inputBox = ""
    @State private var box = 0
    @State private var orange = 0
    
    
    var body: some View {
        VStack {
            TextField("귤?", text: $inputOrange)
            TextField("한 박스의 귤개수?", text: $inputBox)
            Button("계산") {
                box = Int(inputOrange)! / Int(inputBox)!
                orange = Int(inputOrange)! % Int(inputBox)!
            }
        }
        .padding(20)
        
        
        VStack {
            Text("박스수: \(box)")
            Text("남은 귤: \(orange)")
        }
    }
}

#Preview {
    ex2()
}
