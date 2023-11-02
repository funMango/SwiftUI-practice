//
//  ListEx4_1.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/11/01.
//

import SwiftUI

struct ListEx4_1: View {
    @State var selectedItem: Int? = nil
  var body: some View {
      VStack {
          Text("SwiftUI List Quiz")
            .font(.largeTitle)
            .padding()
          List(1...10, id: \.self) { item in
            HStack {
              Text("Item \(item)")
              Spacer()
              if item == selectedItem {
                Image(systemName: "checkmark")
              }
            }
            .onTapGesture {
              selectedItem = item
            }
          }
        }
    }
}

struct ListEx4_1_Previews: PreviewProvider {
    static var previews: some View {
        ListEx4_1()
    }
}
