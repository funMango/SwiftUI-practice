//
//  Rectangle.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import Foundation

class Rectangle : Figure {
    var width: Int?
    var height: Int?
    
    init(width: Int? = nil, height: Int? = nil) {
        super.init()
        self.width = width
        self.height = height
    }
    
    override func getArea() -> Int? {
        if let myWidth = width, let myHeight = height {
            return myWidth * myHeight
        }
        return nil
    }
}
