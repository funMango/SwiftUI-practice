//
//  ProtocolEx7.swift
//  Grammer
//
//  Created by 이민호 on 2023/11/06.
//

import Foundation

func exeProtocolEx7() {
    let boss = Boss(speakerNum: 2, isStereo: true)
    boss.speak(message: "great experience")
}

protocol Speaker {
    func speak(message: String)
}

struct Boss : Speaker {
    var speakerNum: Int
    var isStereo: Bool
    
    init(speakerNum: Int, isStereo: Bool) {
        self.speakerNum = speakerNum
        self.isStereo = isStereo
    }
    
    func speak(message: String) {
        print("Boss sound: \(message)")
        print("stereo sound: \(isStereo)")
        print("Speaker number: \(speakerNum)")
    }
}

