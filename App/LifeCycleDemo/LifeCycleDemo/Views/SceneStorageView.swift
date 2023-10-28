//
//  SceneStorage.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 10/26/23.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage ("mytext") private var mytext = ""
    
    var body: some View {
        TextEditor(text: $mytext)
            .padding(30)
            .font(.largeTitle)
    }
}

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
    }
}
