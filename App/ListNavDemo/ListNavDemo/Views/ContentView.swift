//
//  ContentView.swift
//  ListNavDemo
//
//  Created by 이민호 on 2023/11/02.
//

import SwiftUI

struct ContentView: View {
    @StateObject var carStore : CarStore = CarStore(cars: carData)
    @State private var stackPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stackPath) {
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
            .navigationDestination(for: String.self) { _ in
                AddNewCarView(carStore: self.carStore, path: $stackPath)
            }
            .navigationBarTitle(Text("EV Cars"))
            .navigationBarItems(leading: NavigationLink(value: "Add Car") {
                Text("Add")
            }, trailing: EditButton())
        }        
        .padding()
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


