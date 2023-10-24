//
//  Set.swift
//  Dictionary
//
//  Created by 이민호 on 10/23/23.
//

import Foundation

struct MySet {
    func intersect(_ setA: Set<Int>, _ setB: Set<Int>) -> [Int] {
        return setA.intersection(setB).map { $0 }.sorted()
    }
    
    func unite<T: Comparable>(_ setA: Set<T>, _ setB: Set<T>) -> [T] {
        return setA.union(setB).map { $0 }.sorted()
    }
    
    func subtract<T: Comparable>(_ setA: Set<T>, _ setB: Set<T>) -> [T] {
        return setA.subtracting(setB).map { $0 }.sorted()
    }
    func isDisJoint<T: Comparable>(_ setA: Set<T>, _ setB: Set<T>) -> Bool {
        let intersect = setA.intersection(setB)
        return intersect.count == 0
    }
}
