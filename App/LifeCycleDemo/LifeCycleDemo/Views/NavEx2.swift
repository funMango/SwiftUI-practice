//
//  NavEx2.swift
//  LifeCycleDemo
//
//  Created by 이민호 on 2023/11/01.
//

import SwiftUI

struct Music: Hashable {
    let song: String
    let artist: String
}

struct NavEx2: View {
    var musics = [
        Music(song: "사건의 지평선", artist: "윤하"),
        Music(song: "Hollywood", artist: "검정치마"),
        Music(song: "불꽃놀이", artist: "다이나믹듀오")
    ]
    
    @State private var presentedMusic = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $presentedMusic) {
            List {
                ForEach(musics, id: \.self) { music in
                    NavigationLink(value: music) {
                        Text(music.artist)
                    }
                }
            }
            .navigationDestination(for: Music.self) { music in
                MusicDetail(music: music)
            }
        }
//        .onAppear {
//            presentedMusic = [
//                Music(song: "Hype Boy", artist: "New jeans"),
//                Music(song: "Pink venom", artist: "Black Pink")
//            ]
//        }
    }
}

struct MusicDetail: View {
    var music: Music
    var body: some View {
        VStack {
            Text(music.song)
                .font(.largeTitle)
            Text(music.artist)
        }
    }
}
struct NavEx2_Previews: PreviewProvider {
    static var previews: some View {
        NavEx2()
    }
}
