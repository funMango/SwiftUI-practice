//
//  ObservableView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 10/26/23.
//

import SwiftUI

struct ObservableView: View {
    
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount) {
                    Text("Reset Counter")
                }
                
                NavigationLink(destination: ObservableSecondView(timerData: timerData)) {
                    Text("Next Screen")
                }
                .padding()
            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

#Preview {
    ObservableView()
}
