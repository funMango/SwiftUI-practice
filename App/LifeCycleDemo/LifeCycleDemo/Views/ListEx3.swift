//
//  ListEx3.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/11/01.
//

import SwiftUI

struct ListEx3: View {
    @State private var checkedItems: [Bool] = Array(repeating: false, count: 3)

    var body: some View {
        VStack {
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()

            List(0..<3, id: \.self) { index in
                if checkedItems[index] {
                    Toggle(isOn: $checkedItems[index]) {
                        Text("Item \(index + 1)")
                    }
                    .toggleStyle(CheckboxToggleStyle())
                } else {
                    Text("Item \(index + 1)")
                        .onTapGesture {
                            for i in 0..<checkedItems.count {
                                checkedItems[i] = false
                            }
                            checkedItems[index].toggle()
                        }
                }
            }
            
        }
    }
}



struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            
            configuration.label
            
            Spacer()
 
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(lineWidth: 2)
                .frame(width: 25, height: 25)
                .cornerRadius(5.0)
                .overlay {
                    Image(systemName: configuration.isOn ? "checkmark" : "")
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
        }
    }
}

struct ListEx3_Previews: PreviewProvider {
    static var previews: some View {
        ListEx3()
    }
}
