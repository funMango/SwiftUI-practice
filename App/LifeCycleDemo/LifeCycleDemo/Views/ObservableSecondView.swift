//
//  ObservableSecondView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 10/26/23.
//

import SwiftUI

struct ObservableSecondView: View {
    
    @StateObject var timerData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    ObservableSecondView(timerData: TimerData())
}
