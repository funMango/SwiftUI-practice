//
//  GridRow.swift
//  UI
//
//  Created by 이민호 on 2023/11/09.
//

import SwiftUI

struct GridRowView: View {
    var body: some View {
        Grid(horizontalSpacing: 30, verticalSpacing: 10) {
            GridRow {
                ForEach(1...5, id: \.self) { index in
                    if (index % 2 == 1) {
                        CellContent(index: index, color: .red)
                    } else {
                        Color.clear
                            .gridCellUnsizedAxes([.horizontal, .vertical])
                    }
                }
            }
            
            GridRow {
                ForEach(6...8, id: \.self) { index in
                    CellContent(index: index, color: .blue)
                }
            }
            
            GridRow {
                ForEach(11...12, id: \.self) { index in
                    CellContent(index: index, color: .green)
                }
            }
            
            CellContent(index: 16, color: .mint)
            
            GridRow {
                CellContent(index: 17, color: .orange)
                    .gridCellColumns(4)
                CellContent(index: 18, color: .indigo)
                    .gridCellColumns(2)
            }
        }
        .padding(30)
    }
}

struct GridRow_Previews: PreviewProvider {
    static var previews: some View {
        GridRowView()
    }
}
