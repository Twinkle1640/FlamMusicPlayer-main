import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MusicPlayerViewModel(source: LocalMusicService()) // Change to SpotifyMusicService() if needed

    var body: some View {
        VStack {
            List(viewModel.songs) { song in
                HStack {
                    VStack(alignment: .leading) {
                        Text(song.title).bold()
                        Text(song.artist).font(.subheadline).foregroundColor(.gray)
                    }
                    Spacer()
                    Button("Play") {
                        viewModel.play(song: song)
                    }
                }
            }

            Divider()

            if let current = viewModel.currentSong {
                VStack {
                    Text("Now Playing: \(current.title)")
                        .font(.headline)

                    Button(viewModel.isPlaying ? "Pause" : "Resume") {
                        viewModel.isPlaying ? viewModel.pause() : viewModel.resume()
                    }
                    .padding(.top, 5)
                }
                .padding()
            }
        }
        .padding()
    }
}
