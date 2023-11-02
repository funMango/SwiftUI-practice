//
//  Car.swift
//  ListNavDemo
//
//  Created by 이민호 on 2023/11/02.
//

import Foundation

struct Car : Codable, Identifiable, Hashable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}

