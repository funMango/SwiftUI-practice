//
//  GenericEx7.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx7() {
    print(isEqual(1, 1)) // true
    print(isEqual("Hello", "World")) // false
    print(isEqual(true, false)) // false
}

func isEqual<T: Equatable> (_ first: T, _ second: T) -> Bool {
    return first == second
}
