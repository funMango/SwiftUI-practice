//
//  Grid.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import SwiftUI

struct Grid: View {
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
      
      var body: some View {
        ScrollView {
          LazyVGrid(columns: columns) {
            ForEach((0...19), id: \.self) { _ in
              Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
                .cornerRadius(15)
                .frame(width: 150, height: 150)
                .padding()
            }
          }
        }
      }
}

#Preview {
    Grid()
}
