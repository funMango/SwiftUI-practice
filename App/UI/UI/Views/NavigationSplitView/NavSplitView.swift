//
//  NavSplitView.swift
//  UI
//
//  Created by 이민호 on 2023/11/08.
//

import SwiftUI

struct NavSplitView: View {
    @State private var colors = ["Red", "Green", "Blue"]
    @State private var selectedColor: String?
    
    var body: some View {
        NavigationSplitView {
            List(colors, id: \.self, selection: $selectedColor) { color in
                Text(color).tag(color)
            }
            
        } detail: {
            Text( selectedColor ?? "No color selected")
        }
        .navigationSplitViewStyle(.automatic)
    }
}

struct NavSplitView_Previews: PreviewProvider {
    static var previews: some View {
        NavSplitView()
    }
}
