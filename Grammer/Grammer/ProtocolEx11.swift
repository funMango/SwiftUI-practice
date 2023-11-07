//
//  ProtocolEx11.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

protocol Animal3 {
    var name: String { get }
    func makeSound()
}

class Dog3: Animal3 {
    var name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("Woof!")
    }
}

struct Cat: Animal3 {
    var name: String

    func makeSound() {
        print("Meow!")
    }
}

enum Bird: Animal3 {
    case parrot(String)
    case sparrow(String)

    var name: String {
        switch self {
        case .parrot(let name):
            return name
        case .sparrow(let name):
            return name
        }
    }

    func makeSound() {
        switch self {
        case .parrot:
            print("Hello! \(name)")
        case .sparrow:
            print("Chirp! \(name)")
        }
    }
}

extension Animal3 {
    func introduce() {
        print("My name is \(name)")
    }
}
