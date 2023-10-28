//
//  Color.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 10/26/23.
//

import SwiftUI

class Colors: ObservableObject {
    @Published var color : Color?
    
    func getColor() -> Color {
        if let c = color {
            return c
        }
        return .white
    }
    
    func setColor(_ color: Color) {
        self.color = color
    }
}
