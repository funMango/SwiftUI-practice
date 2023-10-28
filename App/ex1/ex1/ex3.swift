//
//  ex3.swift
//  ex1
//
//  Created by 이민호 on 10/10/23.
//

import SwiftUI

struct ex3: View {
    @State private var inputNum = ""
    @State private var result = 0
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("숫자 입력", text: $inputNum)
            Button("계산") {
                if let number = Int(inputNum), number > 100 {
                    result = number / 100 * 100
                } else {
                    result = Int(inputNum)!
                }
            }
            Text("\(result)")
        }
        .padding(40)
    }
}

#Preview {
    ex3()
}
