//
//  AppStorage.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 10/26/23.
//

import SwiftUI

struct UserName: Encodable, Decodable {
    var firstName: String
    var secondName: String
}

struct AppStorageView: View {
    
    @AppStorage("mytext") var editorText: String = "Sample Text"
    @AppStorage("username") var nameStore: Data = Data()
    
    @State var username = UserName(firstName: "", secondName: "")
    
    //init() {}
    
    var body: some View {
        VStack {
            HStack {
                TextField("firstName", text: $username.firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear() {
                        let decoder = JSONDecoder()

                        if let name = try? decoder.decode(UserName.self, from: nameStore) {
                            username = name
                        }
                    }
                TextField("secondName", text: $username.secondName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            Button("username save") {
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(username) {
                    nameStore = data
                }
                
            }
            
        }
        .padding()
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}

