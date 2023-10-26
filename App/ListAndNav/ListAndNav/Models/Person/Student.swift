//
//  Student.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import Foundation

class Student : Person {
    var grade: Int?
    var classNumber: Int?
    
    init(grade: Int?, classNumber: Int?) {
        super.init()
        self.grade = grade
        self.classNumber = classNumber
    }
    
    func introduce() {
        if let myName = self.name, let myAge = self.age ,let myClass = self.classNumber, let myGrade = self.grade {
            print("저는 \(myName)이고, \(myAge)살입니다. 저는 \(myClass)학년 \(myGrade)반입니다.")
        }
    }
}
