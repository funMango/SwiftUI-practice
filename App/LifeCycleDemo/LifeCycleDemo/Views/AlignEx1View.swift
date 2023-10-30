//
//  AlignEx1View.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/10/30.
//

import SwiftUI

struct AlignEx1View: View {
    var body: some View {
        VStack {
            lionImg()
            LionsImg()
            LionsImg()
            
            Spacer()
            
            coustomBtns()
        }
        .padding()
    }
}

struct lionImg: View {
    var body: some View {
        Image("lion")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100)
            .clipShape(Circle())
    }
}

struct LionsImg: View {
    var body: some View {
        HStack {
            ForEach(0..<3, id: \.self) { _ in
                lionImg()
            }
        }
    }
}

struct coustomBtns: View {
    var body: some View {
        HStack {
            ForEach(0..<3, id: \.self) { index in
                nameChangedBtn(name: "Button")
                if index < 2 {
                    Spacer()
                }
            }
        }
    }
}

struct AlignEx1View_Previews: PreviewProvider {
    static var previews: some View {
        AlignEx1View()
    }
}
