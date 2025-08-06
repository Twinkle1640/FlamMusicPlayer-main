import Foundation
import Combine

class SpotifyMusicService: MusicSource {
    func loadSongs() -> AnyPublisher<[Song], Never> {
        let songs = [
            Song(title: "Spotify Track 1", artist: "Mock Artist", url: URL(string: "https://mock.spotify/song1")!),
            Song(title: "Spotify Track 2", artist: "Mock Artist", url: URL(string: "https://mock.spotify/song2")!)
        ]
        return Just(songs)
            .eraseToAnyPublisher()
    }
}
