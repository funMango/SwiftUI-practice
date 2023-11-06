//
//  ProtocolEx9.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

protocol Calculable {
    var value: Int { get set }
    static func add(_ a: Int, _ b: Int) -> Int
}

class Calculator : Calculable {
    var value: Int = 0
    
    var number : Int {
        get {
            return value
        }
        set (newValue) {
            self.value = newValue
        }
    }
    
    static func add (_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}
