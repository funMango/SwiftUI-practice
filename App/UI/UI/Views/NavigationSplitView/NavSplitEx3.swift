//
//  NavSplitEx3.swift
//  UI
//
//  Created by 이민호 on 2023/11/08.
//

import SwiftUI

struct File: Identifiable, Hashable {
    var id = UUID()
    var category: String
    var contents: [String]
}

struct NavSplitEx3: View {
    let files = [
        File(category: "Photo", contents: ["flower", "pencil", "computer", "tree"]),
        File(category: "Game", contents: ["mario", "sonic", "dragon", "maple"]),
        File(category: "Animal", contents: ["dog", "cat", "human", "giraffe"])
    ]
    
    @State private var selected: File?
    @State private var selectedContent: String?
    
    
    var body: some View {
        NavigationSplitView {
            Ex3ListView(selection: $selected, files: files)
        } content: {
             
        } detail: {
            
        }
    }
}

struct Ex3ListView: View {
    @Binding var selection: File?
    var files: [File]
    
    var body: some View {
        List(files, selection: $selection) { file in
            Text(file.category).tag(file)
        }
    }
}

struct Ex3ContentView: View {
    @Binding var selectedFile: File?
    @Binding var selectedContent: String?
    
    var body: some View {
        if let contents = selectedFile?.contents {
            List(contents, id: \.self, selection: $selectedContent) { content in
                                                
            }
        }
    }
}



struct NavSplitEx3_Previews: PreviewProvider {
    static var previews: some View {
        NavSplitEx3()
    }
}

