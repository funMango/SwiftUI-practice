//
//  Grid.swift
//  UI
//
//  Created by 이민호 on 2023/11/08.
//

import SwiftUI

struct CellContent: View {
    var index: Int
    var color: Color
    
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 50, maxWidth: .infinity, minHeight: 100)
            .background(color)
            .cornerRadius(8)
            .font(.system(.largeTitle))
    }
}

struct GridView: View {
    private var colors: [Color] = [.blue, .yellow, .green]
    private var gridItems = [
        GridItem(.fixed(150)),
        GridItem(.adaptive(minimum: 50)),
        GridItem(.fixed(150)),
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems, spacing: 5) {
                ForEach((0...99), id: \.self) { index in
                    CellContent(index: index, color: colors[index % colors.count])
                    
                }
            }
            .padding(5)
        }
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
