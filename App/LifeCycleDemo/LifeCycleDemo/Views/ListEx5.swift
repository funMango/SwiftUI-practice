//
//  ListEx5.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/11/01.
//

import SwiftUI

struct ListEx5: View {
    var body: some View {
        VStack {
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()
            List(0...9, id: \.self) { item in
                HStack {
                    Text("item \(item + 1)")
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Delete")
                            .foregroundColor(.red)                        
                    })
                }
                
                
                
            }
        }
    }
}

struct ListEx5_Previews: PreviewProvider {
    static var previews: some View {
        ListEx5()
    }
}
