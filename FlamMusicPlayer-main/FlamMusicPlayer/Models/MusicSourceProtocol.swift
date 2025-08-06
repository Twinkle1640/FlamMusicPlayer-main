import Foundation
import Combine

protocol MusicSource {
    func loadSongs() -> AnyPublisher<[Song], Never>
}
