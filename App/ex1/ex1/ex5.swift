//
//  ex5.swift
//  ex1
//
//  Created by 이민호 on 10/10/23.
//

import SwiftUI

struct ex5: View {
    @State private var inputSwift: String = ""
    @State private var inputIos: String = ""
    @State private var inputWeb: String = ""
    @State private var result: Int = 0
    
    var swift: Int {
        Int(inputSwift) ?? 0
    }
    
    var ios: Int {
        Int(inputIos) ?? 0
    }
    
    var web: Int {
        Int(inputWeb) ?? 0
    }
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Swift점수를 입력하세요", text: $inputSwift)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Ios점수를 입력하세요", text: $inputIos)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Web점수를 입력하세요", text: $inputWeb)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("평균 계산하기") {
                result = (swift + ios + web) / 3
            }
            Text("평균: \(result)")
                .padding(30)
        }
        .padding(20)
    }
}

#Preview {
    ex5()
}
