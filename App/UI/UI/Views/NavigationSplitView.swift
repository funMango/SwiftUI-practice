//
//  NavigationSplitView.swift
//  UI
//
//  Created by 이민호 on 2023/11/08.
//

import SwiftUI

struct NavigationSplitView: View {
    @State private var colors = ["Red", "Green", "Blue"]
    @State private var selectedColor: String?
    
    var body: some View {
        NavigationSplitView {
            
        }
    }
}

struct NavigationSplitView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitView()
    }
}
