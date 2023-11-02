//
//  NavEx1.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/11/01.
//

import SwiftUI

struct NavEx1: View {
    var body: some View {
        NavigationView {
            NavigationStack {
            }
        }
    }
}

struct FirstView: View {
    var body: some View {
        Text("First View")
    }
}


struct SecondView: View {
    var body: some View {
        Text("Second View")
    }
}

struct NavEx1_Previews: PreviewProvider {
    static var previews: some View {
        NavEx1()
    }
}
