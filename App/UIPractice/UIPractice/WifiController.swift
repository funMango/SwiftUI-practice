//
//  WifiController.swift
//  UIPractice
//
//  Created by 이민호 on 10/13/23.
//

import SwiftUI

struct WifiController: View {
    let wifiEnable = WifiEnable()
    
    var body: some View {
        VStack {
            Wifi()
            BtnStart()
        }
        .environmentObject(wifiEnable)
    }
}

#Preview {
    WifiController()
}
