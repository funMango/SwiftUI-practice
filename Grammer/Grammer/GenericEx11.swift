//
//  GenericEx11.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx11() {
    let array = [1, 2, 3, 4, 5]
    printReverse(array)
    // 5
    // 4
    // 3
    // 2
    // 1

    let array2 = ["A", "B", "C", "D"]
    printReverse(array2)
    // D
    // C
    // B
    // A
}

func printReverse<T>(_ array: [T]) {
    array.reversed()
        .forEach{print($0)}
}
