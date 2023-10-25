//
//  MfrEx4.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx4() {
    let array = [10, 20, 30, 40]    
    print(differenceBetweenMaxAndMin(array: array))
}

func differenceBetweenMaxAndMin(array: [Int]) -> Int {
    let maxMin = [array.max(), array.min()]
    return abs(array.filter{ maxMin.contains($0) }
        .reduce(0) { result, next in
            abs(result) - next
        })
}




