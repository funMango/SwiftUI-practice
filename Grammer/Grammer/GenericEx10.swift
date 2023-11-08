//
//  GenericEx12.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

func exeGenericEx10() {
    var array = [1, 2, 3, 4, 5]
    swapFirstAndLast(&array)
    print(array) // [5, 2, 3, 4, 1]
    
    var array2 = ["A", "B", "C", "D"]
    swapFirstAndLast(&array2)
    print(array2) // ["D", "B", "C", "A"]
}

func swapFirstAndLast<T>(_ array: inout [T]) {
    let last = array.count - 1
    (array[0], array[last]) = (array[last], array[0])
}
