//
//  Teacher.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import Foundation

class Teacher : Person {
    var subject: String?
    
    init(subject: String? ) {
        super.init()
        self.subject = subject
    }
    
    func introduce() {
        if let myName = self.name, let myAge = self.age ,let mySubject = self.subject {
            print("저는 \(myName)이고, \(myAge)살입니다. 저는 \(mySubject) 선생님입니다.")
        }
    }
}
