//
//  Ex3.swift
//  EnumQuiz
//
//  Created by 이민호 on 10/17/23.
//

import Foundation

func excuteEx2() {
    print("오늘은 \( getSeason(date: (month: 6, day: 17)) )입니다.")
    print("오늘은 \( getSeason(date: (month: 12, day: 15)) )입니다.") 
    print("오늘은 \( getSeason(date: (month: 3, day: 1)) )입니다.")
}

func getSeason(date: (month: Int, day: Int)) -> Season {
    switch date.month {
        case 3...5:
            return Season.spring
       case 6...8:
            return Season.summer
       case 9...11:
            return Season.autumn
       default:
            return Season.winter
    }
}

enum Season {
    case spring
    case summer
    case autumn
    case winter
}




