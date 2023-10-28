//
//  UserNameView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 10/26/23.
//

import SwiftUI

struct UserNameView: View {
    @SceneStorage("name") var name: String = "Input your name"
    var body: some View {
        VStack {
            TextField("Enter text", text: $name)
        }
        .padding()
    }
}

struct UserNameView_Previews: PreviewProvider {
    static var previews: some View {
        UserNameView()
    }
}
