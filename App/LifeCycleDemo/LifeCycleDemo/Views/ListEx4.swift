//
//  ListEx4.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/11/01.
//

import SwiftUI

struct ListEx4: View {
    @State private var checkedItems = Array(repeating: false, count: 10)

    var body: some View {
        VStack {
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()
            List(0...9, id: \.self) { item in
                HStack {
                    Text("Item \(item + 1)")
                        .font(checkedItems[item] ? .system(.headline) : .system(.body))
                    Spacer()
                    Toggle(isOn: $checkedItems[item]) {}
                }
            }
        }
    }
}



struct ListEx4_Previews: PreviewProvider {
    static var previews: some View {
        ListEx4()
    }
}
