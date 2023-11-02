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
        NavigationStack {
            List {
                ForEach(0..<carStore.cars.count, id: \.self) { i in
                    NavigationLink(value: i) {
                        ListCell(car: carStore.cars[i])
                    }
                    
                }
            }
            .navigationDestination(for: Int.self) { i in
                CarDetailView(selectedCar: carStore.cars[i])
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

struct ListCell: View {
    var car: Car
    
    var body: some View {
        HStack {
            Image(car.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 60)
            Text(car.name)
        }
    }
}
