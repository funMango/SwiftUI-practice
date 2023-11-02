//
//  ContentView.swift
//  ListNavDemo
//
//  Created by 이민호 on 2023/11/02.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var carStore : CarStore = CarStore(cars: carData)
    
    var body: some View {
        List {
            ForEach(0..<carStore.cars.count, id: \.self) { i in
                HStack {
                    Image(carStore.cars[i].imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 60)
                    Text(carStore.cars[i].name)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
