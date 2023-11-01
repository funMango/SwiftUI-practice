//
//  ListView.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/10/30.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("Homeplus")
                .listRowSeparator(.hidden)
            Text("Emart mall")
                .listRowSeparatorTint(.green)
            Text("Gmarket")
                .listRowSeparatorTint(.red)
            Text("Auction")
                .listRowBackground(Image("lion"))            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
