//
//  GenericEx9.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx9() {
    print(castToInt(3)) // 3
    print(castToInt("Hello")) // nil
    print(castToInt(true)) // nil
}

func castToInt<T>(_ ele: T) -> Int? {
    if let value = ele as? Int {
        return value
    }
    return nil
}
