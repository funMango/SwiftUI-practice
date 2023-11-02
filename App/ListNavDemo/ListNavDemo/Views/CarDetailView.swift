//
//  CarDetail.swift
//  ListNavDemo
//
//  Created by 이민호 on 2023/11/02.
//

import SwiftUI

struct CarDetailView: View {
    
    let selectedCar: Car
    
    var body: some View {
        Form{
            Section(header: Text("Car Details")) {
                Image(selectedCar.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(selectedCar.name)
                    .font(.headline)
                
                Text(selectedCar.description)
                    .font(.body)
                
                HStack {
                    Text("Hybrid").font(.headline)
                    Spacer()
                    Image(systemName: selectedCar.isHybrid ? "checkmark.circle" : "xmark.circle")
                }
            }            
        }
    }
}

struct CarDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailView(selectedCar: carData[0])
    }
}
