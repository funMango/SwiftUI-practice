//
//  AlignEx2View.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/10/30.
//

import SwiftUI

struct AlignEx2View: View {
    var body: some View {
        VStack {
            resizableImg(name:"square.and.arrow.up", width: 200)
            Spacer()
            upDownBtns()
            Spacer()
            resizableImg(name:"square.and.arrow.down", width: 200)
        }
        .padding()
    }
}

struct upDownBtns: View {
    var body: some View {
        HStack {
            Spacer()
            fixWidthBtn(name: "Up")
            Spacer()
            fixWidthBtn(name: "Down")
            Spacer()
        }
    }
}

struct AlignEx2View_Previews: PreviewProvider {
    static var previews: some View {
        AlignEx2View()
    }
}
