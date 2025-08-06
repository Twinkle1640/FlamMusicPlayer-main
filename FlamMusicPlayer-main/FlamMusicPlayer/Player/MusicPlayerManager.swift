import Foundation
import AVFoundation
import Combine

class MusicPlayerManager {
    static let shared = MusicPlayerManager()

    private var player: AVPlayer?
    @Published var currentSong: Song?
    @Published var isPlaying: Bool = false

    private init() {}

    func play(song: Song) {
        player = AVPlayer(url: song.url)
        player?.play()
        currentSong = song
        isPlaying = true
    }

    func pause() {
        player?.pause()
        isPlaying = false
    }

    func resume() {
        player?.play()
        isPlaying = true
    }

    func stop() {
        player?.pause()
        player = nil
        isPlaying = false
        currentSong = nil
    }
}
