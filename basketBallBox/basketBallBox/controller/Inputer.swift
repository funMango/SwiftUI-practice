//
//  administrator.swift
//  basketBallBox
//
//  Created by 이민호 on 10/12/23.
//
enum InputError: Error {
    case invalidInput
}

import Foundation

func inputBasketBall(_ ball: String) throws -> Int {
    if let ballCnt = Int(ball) {
        return ballCnt
    } else {
        throw InputError.invalidInput
    }
}
