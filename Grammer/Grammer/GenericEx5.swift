//
//  GenericEx5.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx5() {
    printType(3) // The type of 3 is Int
    printType("Hello") // The type of Hello is String
    printType(true) // The type of true is Bool
}

func printType<T>(_ ele: T) {
    print("the type of \(ele) is \(T.self)")
}
