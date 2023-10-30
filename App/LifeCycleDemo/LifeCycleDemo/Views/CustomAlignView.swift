//
//  CustomAlignView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/10/30.
//

import SwiftUI

extension VerticalAlignment {
    private enum Onethird : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d.height / 3
        }
    }
    static let oneThird = VerticalAlignment(Onethird.self)
}

struct CustomAlignView: View {
    var body: some View {
        VStack(spacing: 30) {
                        
            Text("Custom Align View")
                .font(.largeTitle)
                                    
            HStack(alignment: .oneThird) {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 50, height: 200)
                // VerticalAlignment.top을 기준으로 아 갹채의 d.heigth / 3만큼 top을 겹치게 한다.
                Rectangle()
                    .foregroundColor(.black)
                    .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.top]})
                    .frame(width: 50, height: 200)
                Rectangle()
                    .foregroundColor(.brown)
                    .frame(width: 50, height: 200)
                Rectangle()
                    .foregroundColor(.purple)
                    .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.bottom]})
                    .frame(width: 50, height: 200)
            }
            
        }
                
    }
}

struct CustomAlignView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlignView()
    }
}
