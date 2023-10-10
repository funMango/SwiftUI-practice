//
//  ContentView.swift
//  ex1
//
//  Created by 이민호 on 10/10/23.
//

import SwiftUI

struct CalculatorButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 50, height: 50)
            .background(Color.gray)
            .cornerRadius(10)
    }
}

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
            .frame(width: 200, height: 50)
            .padding(30)
            
            HStack(spacing: 20) {
                Button("+") {
                    result = Int(inputNumber1)! + Int(inputNumber2)!
                }
                .modifier(CalculatorButtonStyle())
                
                Button("-") {
                    result = Int(inputNumber1)! - Int(inputNumber2)!
                }
                .modifier(CalculatorButtonStyle())
                
                Button("*") {
                    result = Int(inputNumber1)! * Int(inputNumber2)!
                }
                .modifier(CalculatorButtonStyle())
                
                Button("/") {
                    result = Int(inputNumber1)! / Int(inputNumber2)!
                }
                .modifier(CalculatorButtonStyle())
            }
            .padding(30)
            
            VStack {
                Text("결과")
                Text("\(result)")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

