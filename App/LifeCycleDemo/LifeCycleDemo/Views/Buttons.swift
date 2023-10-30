//
//  Buttons.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/10/30.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        fixWidthBtn(name: "up")
    }
}

struct nameChangedBtn: View {
    var name = ""
    
    var body: some View {
        Button(name) {
        }
        .foregroundColor(.white)
        .padding(10)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct fixWidthBtn: View {
    var name = ""
    
    var body: some View {
        Button(name) {
                
        }
        .frame(width: 80, height: 20)
        .foregroundColor(.white)
        .padding(10)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
