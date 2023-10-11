//
//  ex1.swift
//  project1
//
//  Created by 이민호 on 10/11/23.
//

import SwiftUI
import Combine

struct ex1: View {
    @State private var inputNumber = ""
    
    var time: Time {
        if let time = Int(inputNumber) {
            return calculate(time)
        }
        return Time(0, 0, 0)
    }
    
    var body: some View {
        VStack(spacing: 50) {
            TextField("초를 입력하세요", text: $inputNumber)
                .textFieldStyle(.roundedBorder)
                .onReceive(Just(inputNumber)) { newValue in
                    let filtered = newValue.filter{"0123456789".contains($0)}
                    if filtered != newValue {
                        self.inputNumber = filtered
                    }
                }
                
            Text("\(time.hour)시 \(time.min)분 \(time.seconds)초")
        }
        .padding(20)
    }
    
    func calculate(_ time: Int) -> Time {
        let hour = time / 3600
        let min = (time % 3600) / 60
        let seconds = (time % 3600) % 60
        
        return Time(hour, min, seconds)
    }
}

class Time {
    var hour: Int = 0
    var min: Int = 0
    var seconds: Int = 0
    
    init(_ hour: Int, _ min: Int, _ seconds: Int) {
        self.hour = hour
        self.min = min
        self.seconds = seconds
    }
}

#Preview {
    ex1()
}
