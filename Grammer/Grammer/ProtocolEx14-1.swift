//
//  ProtocolEx14-1.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

func protocolEx14_1() {
    var str = "sample"
    str[3] = "g"
    print(str)
}

extension String {
    subscript(index: Int) -> String {
        get {
            guard index >= 0 && index < count else {
                fatalError("Index out of range")
            }
            return String(self[self.index(self.startIndex, offsetBy: index)])
        }
        set {
            guard index >= 0 && index < count else {
                fatalError("Index out of range")
            }
            var modifiedString = self
            let range = self.index(self.startIndex, offsetBy: index)..<self.index(self.startIndex, offsetBy: index + 1)
            modifiedString.replaceSubrange(range, with: newValue)
            self = modifiedString
        }
    }
}
