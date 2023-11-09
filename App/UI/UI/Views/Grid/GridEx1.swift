//
//  GridEx1.swift
//  UI
//
//  Created by 이민호 on 2023/11/08.
//

import SwiftUI


struct GridEx1: View {
    @State private var value: Double = 1.0 // 기본값 1로 설정
    var gridItems: [GridItem] {
        Array(repeating: .init(.flexible(minimum: 50)), count: Int(value))
    }

    var body: some View {
        VStack {
            Slider(value: $value, in: 1...5, step: 1)
            LazyVGrid(columns: gridItems, spacing: 5) {
                ForEach(1...5, id: \.self) { index in
                    Content(index: index)
                }
            }
        }
        .padding()
    }
}

struct Content: View {
    let index: Int

    var body: some View {
        Text("\(index)")
            .frame(minWidth: 50, minHeight: 50)
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct GridEx1_Previews: PreviewProvider {
    static var previews: some View {
        GridEx1()
    }
}
