//
//  ListEx5.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/11/01.
//

import SwiftUI

struct ListEx5: View {
    
    struct Item: Identifiable {
        let id = UUID()
        let name: String
    }
    
    @State var items = [
        Item(name: "Swift"),
        Item(name: "Java"),
        Item(name: "Python"),
    ]
    
    
    var body: some View {
        VStack {
            NavigationStack {
                List() {
                    ForEach(items) { item in
                        HStack {
                            Text(item.name)
                        }
                    }
                    .onDelete(perform: { indexSet in
                        items.remove(atOffsets: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        items.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                .navigationTitle("SwiftUI List Quiz")
                .toolbar{ EditButton() }
            }
        }
    }
}

struct ListEx5_Previews: PreviewProvider {
    static var previews: some View {
        ListEx5()
    }
}
