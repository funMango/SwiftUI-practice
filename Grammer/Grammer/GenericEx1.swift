//
//  GenericEx1.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx1() {
    var intStack = Stack2<Int>()
    intStack.push(3)
    intStack.push(5)
    print(intStack.pop()) // 5

    var stringStack = Stack2<String>()
    stringStack.push("Hello")
    stringStack.push("World")
    print(stringStack.pop())
}

struct Stack2<T> {
    var items = [T]()
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}
