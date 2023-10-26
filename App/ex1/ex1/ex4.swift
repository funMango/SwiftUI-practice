//
//  ex4.swift
//  ex1
//
//  Created by 이민호 on 10/10/23.
//

import SwiftUI

struct ex4: View {
    @State private var inputNum: String = ""
    
    var number: Int {
        Int(inputNum) ?? 0
    }
    
    var body: some View {
        VStack {
            TextField("숫자를 입력하세요", text: $inputNum)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("\(convert(number))")
        }
    }
    
    func convert(_ number: Int) -> Int {
        if number < 10 {
            return 1
        } else {
            return (number / 10) * 10 + 1
        }
    }
}

#Preview {
    ex4()
}
