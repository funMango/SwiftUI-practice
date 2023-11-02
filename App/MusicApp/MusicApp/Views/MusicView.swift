////
////  MusicView.swift
////  MusicApp
////
////  Created by 이민호 on 2023/11/02.
////
//
//import SwiftUI
//
//
//struct MusicView: View {
//
//
//    @State private var artists: [Artist] = []
//
//    @State private var selection: Artist?
//
//    var body: some View {
//
//
//        NavigationView {
//            VStack{
//                List {
//                    ForEach(artists, id: \.mbid) { artist in
//                        VStack(alignment: .leading) {
//                            Text(artist.name ?? "Unknown Artist")
//                                .font(.headline)
//                                .foregroundStyle(.white)
//                            Text("Listeners: \(artist.listeners ?? "N/A")")
//                                .font(.body)
//                                .foregroundStyle(.gray)
//                        }
//                        .listRowBackground(Color.black)
//                    }
//                    .onMove(perform: moveArtist)
//                    .onDelete(perform: deleteArtist)
//
//                }
//                .scrollContentBackground(.hidden)
//            }
//            .background(Color.black)
//            .toolbar {
//                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing){
//                    EditButton()
//                }
//            }
//        }
//        .onAppear {
//            fetchData()
//        }
//
//
//
//
//
//    }
//
//    func fetchData() {
//        if let url = URL(string: "https://ws.audioscrobbler.com/2.0/?method=chart.gettopartists&api_key=3920671c9efefa722f3db57dac9235cb&format=json") {
//            URLSession.shared.dataTask(with: url) { data, _, error in
//                if let data = data {
//                    do {
//                        let response = try JSONDecoder().decode(Music.self, from: data)
//                        if let artists = response.artists?.artist {
//                            self.artists = artists
//                            print(artists)
//                        }
//                    } catch {
//                        print("JSON 디코딩 오류: \(error)")
//                    }
//                } else if let error = error {
//                    print("데이터 가져오기 오류: \(error)")
//                }
//            }.resume()
//        }
//    }
//
//
//    func moveArtist(from source: IndexSet, to destination: Int) {
//        artists.move(fromOffsets: source, toOffset: destination)
//    }
//
//    func deleteArtist(at offsets: IndexSet) {
//        artists.remove(atOffsets: offsets)
//    }
//}
//
//struct MusicView_Previews: PreviewProvider {
//    static var previews: some View {
//        MusicView()
//    }
//}
