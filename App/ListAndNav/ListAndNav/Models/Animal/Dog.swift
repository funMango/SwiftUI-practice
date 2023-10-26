//
//  Dog.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import Foundation

class Dog : Animal {
    private var name  = ""
            
    init(name: String) {
        self.name = name
    }
    
    override func makeSound() {
        print("왈왈")
    }
}
