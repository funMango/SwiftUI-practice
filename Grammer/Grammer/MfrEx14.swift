//
//  MfrEx14.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeMfrEx14() {
    let numbers = [1, 3, 4, 2, 5]
    let reversedNumbers = reverse(numbers)
    print(reversedNumbers)      // [5, 2, 4, 3, 1]
}

func reverse(_ numbers: [Int]) -> [Int] {
    return numbers.reduce(into: []) { (result, number) in
        result.insert(number, at: 0)
    }
}
