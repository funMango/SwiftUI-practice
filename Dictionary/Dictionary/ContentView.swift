//
//  ContentView.swift
//  Dictionary
//
//  Created by 이민호 on 10/23/23.
//

import SwiftUI

struct ContentView: View {
    let set = MySet()
    
    var body: some View {
        VStack {
            Button("intersection") {
                let setA: Set<Int> = [1, 2, 3, 4, 5]
                let setB: Set<Int> = [3, 4, 5, 6, 7]
                let intersection = set.intersect(setA, setB)
                print(intersection)
            }
            Button("unite") {
                let setC: Set<String> = ["apple", "banana", "cherry"]
                let setD: Set<String> = ["cherry", "durian", "elderberry"]
                let union = set.unite(setC, setD)
                print(union) // ["apple", "banana", "cherry", "durian", "elderberry"]
            }
            Button("subtract") {
                let setE: Set<Double> = [1.0, 2.0, 3.0, 4.0, 5.0]
                let setF: Set<Double> = [2.0, 4.0, 6.0]
                let difference = set.subtract(setE, setF)
                print(difference) // [1.0, 3.0, 5.0]
            }
            Button("isDisJoint") {
                let setG: Set<Character> = ["a", "b", "c"]
                let setH: Set<Character> = ["d", "e", "f"]
                let isDisjoint = set.isDisJoint(setG, setH)
                print(isDisjoint) // true

            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
