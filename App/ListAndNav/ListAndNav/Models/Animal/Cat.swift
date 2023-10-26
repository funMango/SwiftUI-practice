//
//  Cat.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import Foundation

class Cat : Animal {
    private var name  = ""
    
    init(_ name: String) {
        self.name = name
    }
    
    override func makeSound() {
        print("냐오오옹")
    }    
}
