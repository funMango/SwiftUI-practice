//
//  Ex3.swift
//  Async
//
//  Created by 이민호 on 10/20/23.
//

import SwiftUI

struct Ex3: View {
    var body: some View {
        VStack {
            Button("execute function") {
                Task {
                    await print(asyncFunction())
                }                
            }
        }
    }
    
    func asyncFunction() async -> Int {
        let random = Int.random(in: 1...10)
        return random
    }
}

#Preview {
    Ex3()
}
