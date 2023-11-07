//
//  ProtocolEx12.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

func protocolEx12() {
    var bard  = Bird2(speed: 30)
    bard.x = 20
    bard.fly()
}

protocol Flyable {
    var speed: Double { get set }
}

struct Bird2 : Flyable {
    var speed: Double = 0
    
    var x: Double  {
        get {
            return speed
        }
        set {
            speed = newValue
        }
    }
        
}

extension Flyable {
    func fly() {
        print("fly speed is \(speed)")
    }
}


