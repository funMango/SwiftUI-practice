//
//  SelectedColorView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 10/26/23.
//

import SwiftUI

struct SelectedColorView: View {
    
    @StateObject var color: Colors
    
    var body: some View {
        VStack(spacing:20) {
            Text("Your choice color")
                .font(.largeTitle)
            Rectangle() // Rectangle을 생성
                   .frame(width: 300, height: 500) // 크기 지정 (가로: 100, 세로: 100)
                   .foregroundColor(color.getColor())
        }
        .padding()
        
    }
}

struct SelectedColorView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedColorView(color: Colors())
    }
}

