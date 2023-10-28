//
//  ex2.swift
//  project1
//
//  Created by 이민호 on 10/11/23.
//

import SwiftUI
import Combine

struct ex2: View {
    @State private var inputNumber = ""
    
    var money: Int {
        if let time = Int(inputNumber) {
            if time > 8 {
                return 80000 + (time - 8) * 15000
            } else {
                return time * 10000
            }
        }
        return 0
    }
    
    var body: some View {
        VStack(spacing: 50) {
            TextField("근무시간을 입력하세요", text: $inputNumber)
                .textFieldStyle(.roundedBorder)
                .onReceive(Just(inputNumber)) { newValue in
                    let filtered = newValue.filter{"0123456789".contains($0)}
                    if filtered != newValue {
                        self.inputNumber = filtered
                    }
                }
            Text("총 급여는 \(money)원 입니다.")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
        }
        .padding(20)
    }
    
    
    
}

#Preview {
    ex2()
}
