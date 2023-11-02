//
//  CarStore.swift
//  ListNavDemo
//
//  Created by 이민호 on 2023/11/02.
//

import SwiftUI
import Combine

class CarStore : ObservableObject {
    @Published var cars: [Car]
    
    init(cars: [Car] = []) {
        self.cars = cars
    }
}

