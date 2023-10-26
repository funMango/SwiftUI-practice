//
//  StorageDemoView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 10/26/23.
//

import SwiftUI

struct StorageDemoView: View {
    var body: some View {
        TabView {
            SceneStorageView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("SceneStorage")
                }
            AppStorageView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("AppStorage")
                }
        }
    }
}

#Preview {
    StorageDemoView()
}
