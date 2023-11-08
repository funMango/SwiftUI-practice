//
//  GenericEx6.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx6() {
    let node = Node(key: "name", value: "Alice")
    print(node.key) // name
    print(node.value) // Alice
}

class Node<T> {
    var key : T
    var value : T
    
    init(key: T, value: T) {
        self.key = key
        self.value = value
    }
}
