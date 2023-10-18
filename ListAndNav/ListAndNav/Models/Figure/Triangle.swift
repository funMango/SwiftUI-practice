//
//  Triangle.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import Foundation

class Triangle : Figure {
    var base: Int?
    var height: Int?
    
    init(_ base: Int? = nil, _ height: Int? = nil) {
        super.init()
        self.base = base
        self.height = height
    }
    
    override func getArea() -> Int? {
        if let myBase = base, let myHeight = height {
            return myBase * myHeight / 2
        }
        return nil
    }
}
