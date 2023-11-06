//
//  ProtocolEx6.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

protocol Person2 {
    var name : String { get set }
    var age : Int { get set }
            
    func introduce()
}

class Student2: Person2 {
    var name : String
    var age : Int
    var school: String
    
    init(name: String, age: Int, school: String) {
        self.name = name
        self.age = age
        self.school = school
    }
    
    func introduce() {
        print("I go to \(school).")
    }
}
