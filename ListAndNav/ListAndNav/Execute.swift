//
//  Execute.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import Foundation

func execute() {
    let triangle = Triangle(2, 5)

    if let area = triangle.getArea() {
        print("삼각형 넓이: \(area)")
    }
}
