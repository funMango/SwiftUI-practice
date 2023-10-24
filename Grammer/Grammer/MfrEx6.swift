//
//  MfrEx6.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx6() {
    let array = ["a", "b", "a", "c", "b", "d"]
    if let result = mostFrequentElement(array: array) {
        print(result)
    }
}

func mostFrequentElement(array: [String]) -> String? {
    var dic = [String : Int]()
    
    array.map({value in
        dic[value, default: 0] += 1
    })
    
    let maxValue = dic.values.max()
    return dic.filter { $0.value == maxValue }.first?.key ?? nil
}
