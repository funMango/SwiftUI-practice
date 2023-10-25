//
//  MfrEx16.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeMfrEx16() {
    let sentence = "This is a test"
    let noSpaceSentence = removeSpaces(sentence)
    print(noSpaceSentence)      // "Thisisatest"
}

func removeSpaces(_ sentence: String) -> String {
    return sentence.filter { $0 != " "}
        .map { String($0) }
        .joined(separator: "")
}
