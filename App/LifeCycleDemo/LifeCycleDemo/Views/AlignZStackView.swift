//
//  AlignZstackView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/10/30.
//

import SwiftUI

extension VerticalAlignment {
    private enum CrossAlignment: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.bottom]
        }
    }
    
    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
}

struct AlignZStackView: View {
    var body: some View {
        HStack(alignment: .crossAlignment, spacing: 20) {
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 100)
                .alignmentGuide(.crossAlignment, computeValue: {d in
                    d[VerticalAlignment.center]
                })
            VStack(alignment: .center) {
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
            }
        }
        .padding()
    }
}

struct AlignZStackView_Previews: PreviewProvider {
    static var previews: some View {
        AlignZStackView()
    }
}
