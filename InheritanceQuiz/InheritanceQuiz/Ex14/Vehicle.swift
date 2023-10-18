//
//  Car.swift
//  InheritanceQuiz
//
//  Created by 이민호 on 10/17/23.
//

import SwiftUI

class Vehicle {
    var model: String?, color: Color?
    
    init(model: String? = nil, color: Color? = nil) {
        self.model = model
        self.color = color
    }
    
    func drive() {
        if let myModel = model, let myColor = color {
            print("I dirive \(myColor) \(myModel) ")
        }
    }
}

class Car : Vehicle {
    private var door: Int?
    
    init(door: Int? = nil) {
        super.init()
        self.door = door
    }
    
    override func drive() {
        if let myModel = model, let myColor = color, let carDoor = door {
            print("I dirive \(myColor) \(myModel) with \(carDoor)door ")
        }
    }
}


class MotorCycle : Vehicle {
    private var onHelmet : Bool?
    
    init(onHemet: Bool? = nil) {
        super.init()
        self.onHelmet = onHemet
    }
    
    override func drive() {
        if let myModel = model, let myColor = color, let isOnHelmet = onHelmet {
            if isOnHelmet {
                print("I drive \(myColor) \(myModel) with a helmet on")
            } else {
                print("I can't drive because I don't have a helmet")
            }
        }
    }
}
