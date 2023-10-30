//
//  AlignedView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/10/30.
//

import SwiftUI

struct AlignedView: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .trailing) {
                Text("No time to hesitate.")
                Text("Hello, World! over year")
                Text("apple computer")
            }
            
            HStack(alignment: .lastTextBaseline, spacing: 30) {
                Text("Thisisneverthat")
                    .font(.largeTitle)
                Text("Thisisnerverthat")
                    .font(.body)
                Text("thisisnever")
                    .font(.headline)
            }
            
            VStack(alignment: .trailing) {
                Rectangle()
                    .frame(width: 120, height: 50)
                    .foregroundColor(.gray)
                Rectangle()
                    .frame(width: 120, height: 50)
                    .foregroundColor(.black)
                    // alignmentGuide의 정렬방식부분은 부모의 정렬방식과 같아야 작동한다.
                    .alignmentGuide(.trailing, computeValue: {d in
                        -120.0
                    })
                Rectangle()
                    .frame(width: 120, height: 50)
                    .foregroundColor(.brown)
                    .alignmentGuide(.trailing, computeValue: {d in
                        d.width / 7
                    })
                Rectangle()
                    .frame(width: 120, height: 50)
                    .foregroundColor(.indigo)
                    .alignmentGuide(.trailing, computeValue: {d in
                        d[HorizontalAlignment.leading] - 30
                    })
            }
        }
        .padding()
    }
}

struct AlignedView_Previews: PreviewProvider {
    static var previews: some View {
        AlignedView()
    }
}
