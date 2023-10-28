//
//  Wifi.swift
//  UIPractice
//
//  Created by 이민호 on 10/13/23.
//

import SwiftUI

struct Wifi: View {
    @EnvironmentObject var wifiEnable: WifiEnable
    
    var body: some View {
        if wifiEnable.isEnable {
            Text("wifi Enabled")
        } else {
            Text("wifi Disabled")
        }
    }
}

#Preview {
    Wifi()
}
