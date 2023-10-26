//
//  ex.swift
//  ex1
//
//  Created by 이민호 on 10/10/23.
//

import SwiftUI

struct ex: View {
    @State private var input = ""
    private let KM: Double = 1000
    private let CM: Double = 0.01
    private let IN: Double = 39.370
    
    var number: Double {
        if let tmp = Double(input) {
            return tmp
        } else {
            return 0
        }
    }
    
    var body: some View {
        VStack {
            TextField("미터를 입력하세요", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle()) // 선택사항: TextField 스타일 지정
            
            Text("\(number / KM) km")
                .padding(10)
            Text("\(number / CM) cm")
                .padding(10)
            Text("\(number * IN) inch")
                .padding(10)
        }
        .padding(30)
    }
}


#Preview {
    ex()
}

