//
//  GenericEx12.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

class Node2<T> {
    var value: T
    var next: Node2?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var head: Node2<T>?
    
    func append(_ value: T) {
        let newNode = Node2(value: value)
        
        if head == nil {
            head = newNode
        } else {
            var end = head
            while end?.next != nil {
                end = end?.next
            }
            end?.next = newNode
        }
    }
}


