import Foundation
import Combine

class MusicPlayerViewModel: ObservableObject {
    @Published var songs: [Song] = []
    @Published var currentSong: Song?
    @Published var isPlaying: Bool = false

    private var cancellables = Set<AnyCancellable>()
    private var musicService: MusicSource

    init(source: MusicSource) {
        self.musicService = source
        bindPlayer()
        loadSongs()
    }

    func loadSongs() {
        musicService.loadSongs()
            .receive(on: RunLoop.main)
            .sink { [weak self] songs in
                self?.songs = songs
            }
            .store(in: &cancellables)
    }

    func play(song: Song) {
        MusicPlayerManager.shared.play(song: song)
    }

    func pause() {
        MusicPlayerManager.shared.pause()
    }

    func resume() {
        MusicPlayerManager.shared.resume()
    }

    private func bindPlayer() {
        MusicPlayerManager.shared.$currentSong
            .assign(to: &$currentSong)

        MusicPlayerManager.shared.$isPlaying
            .assign(to: &$isPlaying)
    }
}
