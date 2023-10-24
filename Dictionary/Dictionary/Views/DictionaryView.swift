//
//  DictionaryView.swift
//  Dictionary
//
//  Created by 이민호 on 10/24/23.
//

import SwiftUI

struct DictionaryView: View {
    let dic = Dictionary()
    
    var body: some View {
        VStack{
            Button("find Max Value") {
                let scores = ["math": 90, "english": 85, "science": 95]
                if let value = dic.getMaxValue(scores) {
                    print(value)
                }
            }
            
            Button("change key value") {
                let colors = ["red": "#FF0000", "green": "#00FF00", "blue": "#0000FF"]
                print(dic.changeKeyValue(colors))
            }
            
            Button("even value") {
                var even = ["a": 2, "b": 3, "c": 4, "d": 5]
                print(dic.findEvenValue(even))
            }
            
        }
    }
}

#Preview {
    DictionaryView()
}
