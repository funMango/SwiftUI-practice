//
//  OutlineGroupEx2.swift
//  UI
//
//  Created by 이민호 on 2023/11/08.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let price: Double?
    let subItems: [MenuItem]?
}

let menus = [
    MenuItem(name: "Burger", price: 12.00, subItems: nil),
    MenuItem(name: "Pizza", price: nil, subItems: [
        MenuItem(name: "Cheese", price: 14.00, subItems: nil),
        MenuItem(name: "Pepperoni", price: 14.50, subItems: nil),
        MenuItem(name: "Veggie", price: 13.50, subItems: nil),
    ]),
    MenuItem(name: "Salad", price: 8.00, subItems: nil)
]

struct MenuDetailView: View {
    let menu: MenuItem
    
    var body: some View {
        HStack {
            Text(menu.name)
            Spacer()
            if let price = menu.price {
                let strPrice = String(format: "%.2f", price)
                Text("$ \(strPrice)")
            }
        }
    }
}

struct OutlineGroupEx2: View {
    var body: some View {
        List {
            ForEach(menus) { menu in
                Section(header: Text(menu.name)) {
                    OutlineGroup(menu.subItems ?? [MenuItem](),
                                 children: \.subItems) { child in
                        MenuDetailView(menu: child)
                        
                    }
                }
            }
        }
        .listStyle(InsetListStyle())
    }
}

struct OutlineGroupEx2_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroupEx2()
    }
}
