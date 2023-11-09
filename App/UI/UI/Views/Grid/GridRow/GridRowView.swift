//
//  GridRow.swift
//  UI
//
//  Created by 이민호 on 2023/11/09.
//

import SwiftUI

struct GridRowView: View {
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow(alignment: .bottom) {
                CellContent(index: 0, color: .orange)
                Image(systemName: "record.circle.fill")
                    .gridColumnAlignment(.trailing)
                Image(systemName: "record.circle.fill")
                    .gridCellAnchor(.center)
                Image(systemName: "record.circle.fill")
                    .gridCellAnchor(.top)
                CellContent(index: 0, color: .yellow)
                
            }
            .font(.largeTitle)
            
            GridRow {
                CellContent(index: 0, color: .orange)
                Image(systemName: "record.circle.fill")
                Image(systemName: "record.circle.fill")
                Image(systemName: "record.circle.fill")
                CellContent(index: 0, color: .yellow)
                
            }
            .font(.largeTitle)
            
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
        .padding(40)
    }
}

struct GridRow_Previews: PreviewProvider {
    static var previews: some View {
        GridRowView()
    }
}
