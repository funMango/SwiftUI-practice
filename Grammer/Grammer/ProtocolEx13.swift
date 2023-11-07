//
//  ProtocolEx13.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

func protocolEx13() {
    var flower = Flower(color: "Yellow")
    flower.x = "red"
    flower.discription()
}

protocol Colorful2 {
    var color: String { get set }
}

struct Flower: Colorful2 {
    var color : String
    
    var x : String {
        get {
            return color
        }
        set {
            color = newValue
        }
    }
}

extension Colorful2 {
    func discription() {
        print("A \(color) thing")
    }
}


