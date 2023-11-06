//
//  ProtocolEx14.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

func exeProtocolEx14() {
    var stack = Stack(items: [5,4,7,3,1])
    stack[0] = 2
    print(stack[0])
}

protocol Stackable {
    var items: [Int] { get set }
}

struct Stack : Stackable {
    var items: [Int] = []
    
    var r : [Int] {
        get { return items }
        set {
            items = newValue
        }
    }
}

extension Stackable {
    subscript(index: Int) -> Int {
        get {
            return items[index]
        }
        set {
            items[index] = newValue
        }
    }
}



