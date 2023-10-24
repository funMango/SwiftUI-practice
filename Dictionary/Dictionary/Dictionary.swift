//
//  Dictionary.swift
//  Dictionary
//
//  Created by 이민호 on 10/23/23.
//

import Foundation

struct Dictionary {
    func mostFrequentValue(dict: [String : Int]) -> Int {
        var count = [Int: Int]()
        for num in dict.values {
            count[num, default: 0] += 1
        }
        
        if let maxValue = count.values.max() {
            return count.filter{ $0.value == maxValue }.map{ $0.key }.first!
        } else {
            return 0
        }
    }
    
    func getMaxScore(_ dic: [String: Int]) -> Int {
        let maxValue = dic.values.max()
        
        if let result = dic.values.map({ $0 }).filter({ $0 == maxValue }).first {
            return result
        }
        return 0
    }
    
    
}
