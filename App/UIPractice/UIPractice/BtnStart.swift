//
//  Button.swift
//  UIPractice
//
//  Created by 이민호 on 10/13/23.
//

import SwiftUI

struct BtnStart: View {
    @EnvironmentObject var wifiEnable: WifiEnable
    
    var body: some View {
        Button(action: {
            wifiEnable.toggleWifi()
        }, label: {
            Text("Change")
                .font(.title)
        })
    }
}

#Preview {
    BtnStart()
}
