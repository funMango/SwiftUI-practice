//
//  GenericEx2.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx2() {
    var a = 10
    var b = 20
    swap(&a, &b)
    print(a, b) // 20, 10
}

func swap<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}
