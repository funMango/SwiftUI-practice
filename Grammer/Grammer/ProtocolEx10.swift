//
//  ProtocolEx10.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

func exeProtocolEx10() {
    Fruit.apple.describe()
    Fruit.banana.describe()
    Fruit.cherry.describe()
}

protocol Colorful {
    var color: String { get }
    func describe()
}

extension Colorful {
    func dexcribe() {
        print("This is \(color).")
    }
}

enum Fruit : Colorful {
    case apple
    case banana
    case cherry
    
    var color: String {
        switch self {
        case .apple:
            return "red"
        case .banana:
            return "yellow"
        case .cherry:
            return "pink"
        }
    }
    
    func describe() {
        print("This is \(self.color)")
    }
}


