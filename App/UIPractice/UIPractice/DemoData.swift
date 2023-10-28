//
//  DemoData.swift
//  UIPractice
//
//  Created by 이민호 on 10/13/23.
//

import Foundation
import Combine

class DemoData : ObservableObject {
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init(_ currentUser: String) {
       updateData(currentUser)
    }
    
    func updateData(_ currentUser: String) {
        self.currentUser = currentUser
        self.userCount += 1
    }
}
