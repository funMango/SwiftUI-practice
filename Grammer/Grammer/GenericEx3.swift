//
//  GenericEx3.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx3() {
    var stack = Stack3<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    print(stack.pop())   // 3
    print(stack.peek())  // 2
    print(stack.isEmpty()) // false
}

struct Stack3<T> {
    var stack = [T]()
    
    mutating func push(_ ele: T) {
        stack.append(ele)
    }
    
    mutating func pop() -> T {
        if stack.count == 0 { fatalError("This array is empty") }
        return stack.removeLast()
    }
    
    func peek() -> T {
        if stack.count == 0 { fatalError("This array is empty") }
        let lastIdx = stack.count - 1
        return stack[lastIdx]
    }
    
    func isEmpty() -> Bool {
        if stack.count == 0 {
            return true
        }
        return false
    }
}
