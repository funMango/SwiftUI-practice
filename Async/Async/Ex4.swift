//
//  Ex4.swift
//  Async
//
//  Created by 이민호 on 10/20/23.
//

import SwiftUI

struct Ex4: View {
    let x = 2, y = 4
    
    var body: some View {
        Button("execute function") {
            Task {
                await asyncPrintSum(x, y)
            }
        }
    }
}

func asyncAdd(_ x: Int, _ y: Int) async -> Int {
    return x + y
}

func asyncPrintSum(_ a: Int, _ b: Int) async {
    let sum = await asyncAdd(a, b)
    print(sum)
}

#Preview {
    Ex4()
}
