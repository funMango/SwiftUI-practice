//
//  WifiEnable.swift
//  UIPractice
//
//  Created by 이민호 on 10/13/23.
//

import Foundation
import Combine

class WifiEnable : ObservableObject {
    @Published var isEnable = false
    
    func toggleWifi() {
        self.isEnable.toggle()
    }
}
