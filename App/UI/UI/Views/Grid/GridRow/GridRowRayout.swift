//
//  GridRowRayout.swift
//  UI
//
//  Created by 이민호 on 2023/11/09.
//

import SwiftUI

struct GridRowRayout: View {
    var body: some View {
        
            Grid {
                GridRow {
                    // GridRow 내의 내용
                    ForEach(1...5, id: \.self) { index in
                        VStack {
                            CellContent(index: index, color: .red)
                        }
                    }
                }                
            }
            .padding()
        
    }
}

struct GridRowRayout_Previews: PreviewProvider {
    static var previews: some View {
        GridRowRayout()
    }
}
