import Foundation
import Combine

class LocalMusicService: MusicSource {
    func loadSongs() -> AnyPublisher<[Song], Never> {
        let songs = [
            Song(title: "Local Track 1", artist: "Local Artist", url: URL(string: "https://example.com/local1.mp3")!),
            Song(title: "Local Track 2", artist: "Local Artist", url: URL(string: "https://example.com/local2.mp3")!)
        ]
        return Just(songs)
            .eraseToAnyPublisher()
    }
}
