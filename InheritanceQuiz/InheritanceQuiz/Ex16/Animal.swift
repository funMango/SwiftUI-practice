//
//  Animal.swift
//  InheritanceQuiz
//
//  Created by 이민호 on 10/17/23.
//

import Foundation

class Animal {
    var name : String?
    var age: Int?
    
    init(name: String? = nil, age: Int? = nil) {
        self.name = name
        self.age = age
    }
    
    func cry(_ cry: String?) {
        if let aniName = name, let aniCry = cry {
            print("\(aniName)이(가) \(aniCry)라고 울어요.")
        }
    }
}


