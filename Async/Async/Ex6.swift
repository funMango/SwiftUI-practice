//
//  Ex6.swift
//  Async
//
//  Created by 이민호 on 10/20/23.
//

import SwiftUI

struct Ex6: View {
    var body: some View {
        Button("execute function") {
            Task {
                let result = await syncDouble(2)
                print(result)
            }
        }
    }
}

func asyncDouble(_ x: Int) async -> Int {
    return x * 2
}

func syncDouble(_ x: Int) async -> Int {
    return await asyncDouble(x)
}

#Preview {
    Ex6()
}
