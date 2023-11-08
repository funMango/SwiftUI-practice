//
//  GenericEx4.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx4() {
    var queue = Queue<String>()
    queue.enqueue("A")
    queue.enqueue("B")
    queue.enqueue("C")
    print(queue.dequeue()) // A
    print(queue.front()) // B
    print(queue.isEmpty) // false
}

struct Queue<T> {
    var que : [T] = []
    
    mutating func dequeue() -> T {
        return que.removeFirst()
    }
    
    mutating func enqueue(_ ele: T) {
        que.append(ele)
    }
    
    func front() -> T? {
        return que.first
    }
    
    var isEmpty: Bool {
        return que.isEmpty
    }
}
