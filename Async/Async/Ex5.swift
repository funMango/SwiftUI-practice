//
//  Ex5.swift
//  Async
//
//  Created by 이민호 on 10/20/23.
//

import SwiftUI

struct Ex5: View {
    var body: some View {
        Button("execute function") {
            Task {
                await printUser(id: 1)
            }
        }
    }
}

func fetchUser(id: Int) async -> String {
    // some network request
    return "User \(id)"
}

func printUser(id: Int) async {
    let user = await fetchUser(id: id)
    print(user)
}

#Preview {
    Ex5()
}
