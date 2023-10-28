//
//  ContentView.swift
//  Calculator
//
//  Created by 이민호 on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var inputNumber1 = ""
    @State private var inputNumber2 = ""
    @State private var result = 0
    
    var body: some View {
        VStack {
            VStack {
                TextField("숫자를 입력하세요", text: $inputNumber1)
                TextField("숫자를 입력하세요", text: $inputNumber2)
            }
            .frame(width:200, height:50)
            
            
            Text("기호를 선택하세요")
                .padding(20)
            HStack(spacing: 50) {
                let num1 = Int(inputNumber1)!
                let num2 = Int(inputNumber2)!
                
                Button("+") {
                    result = num1 + num2
                }
                Button("-") {
                    result = num1 - num2
                }
                Button("*") {
                    result = num1 * num2
                }
                Button("/") {
                    result = num1 / num2
                }
            }
            Text("\(result)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
