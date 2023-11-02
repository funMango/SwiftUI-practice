//
//  ContentView.swift
//  MusicApp
//
//  Created by 이민영 on 2023/11/02.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var musicStore : MusicStore = MusicStore(musics: musicData)
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<musicStore.musics.count, id: \.self) { i in
                    NavigationLink(value: i) {
                        MusicList(musicStore: musicStore, i: i)
                    }
                }
            }
            .navigationDestination(for: Int.self) { i in
                // 음악 세부사항 View 넣기
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MusicList: View {
    let musicStore: MusicStore
    let i : Int
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: musicStore.musics[i].image))
                .frame(width: 50, height: 50)
            VStack {
                Text(musicStore.musics[i].title)
                Text(musicStore.musics[i].artist)
            }
        }
    }
}
