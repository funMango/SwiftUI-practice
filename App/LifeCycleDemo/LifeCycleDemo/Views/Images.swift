//
//  Images.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/10/30.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct resizableImg: View {
    var name = ""
    var width: CGFloat = 0
    var height: CGFloat = 0
    
    var body: some View {
        Image(systemName: name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: width)
    }
}


struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
