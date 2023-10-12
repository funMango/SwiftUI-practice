//
//  Ex9.swift
//  project1
//
//  Created by 이민호 on 10/12/23.
//

import SwiftUI
import Combine

struct Ex9: View {
    @State private var inputScore = ""
    @State private var result = ""
    @State private var isResultVisible = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("홀수 짝수 계산기")
                .font(.system(size: 30))
                .frame(maxWidth: .infinity, maxHeight: 50)
                
            Spacer()
            
            HStack(spacing: 20) {
                TextField("정수를 입력하세요", text: $inputScore)
                    .textFieldStyle(.roundedBorder)
                    .onReceive(Just(inputScore)) { ele in
                        let filtered = ele.filter {"0123456789".contains( $0 )}
                        if filtered != inputScore {
                            self.inputScore = filtered
                        }
                    }
                Button("입력") {
                    if let number = Int(inputScore) {
                        result = isEven(number) ? "짝수" : "홀수"
                        isResultVisible = true
                    }
                }
            }
            
            if isResultVisible {
                Text("결과: \(inputScore)은(는) \(result)입니다.")
                .padding(.horizontal, 20)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(20)
    }
    
    func isEven(_ num: Int) -> Bool {
        return num % 2 == 0
    }
}

#Preview {
    Ex9()
}
