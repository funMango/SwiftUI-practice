//
//  Ex7.swift
//  Async
//
//  Created by 이민호 on 10/20/23.
//

import SwiftUI

struct Ex7: View {
    var body: some View {
        VStack {
            Button("execute function") {
                Task {
                    await asyncPrintSum()
                }
            }                   
        }
    }
}

func asyncAdd2(_ x: Int, _ y: Int) async -> Int {
    return x + y
}

func asyncPrintSum() async {
    let a = await asyncAdd2(10, 20)
    let b = await asyncAdd2(30, 40)
    print(a + b)
}



#Preview {
    Ex7()
}
