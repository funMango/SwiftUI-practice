//
//  GenericEx8.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx8() {
    print(isInt(3)) // true
    print(isInt("Hello")) // false
    print(isInt(true)) // false
}

func isInt<T>(_ ele: T) -> Bool {
    return ele is Int
}
