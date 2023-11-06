//
//  ProtocolEx8.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

func exeProtocolEx8() {
    let bob = Dog2(name: "Bob", owner: "Charlie")
    bob.makeSound()
}

protocol Animal2 {
    var name: String { get }
    func makeSound()
}

protocol Mammal : Animal2 {
    var owner: String { get set }
}

struct Dog2 : Mammal {
    var name : String
    var owner: String
    
    func makeSound() {
        print("\(name) Woof!")
    }
}




