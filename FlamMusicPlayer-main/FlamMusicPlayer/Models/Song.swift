import Foundation

struct Song: Identifiable {
    let id: UUID = UUID()
    let title: String
    let artist: String
    let url: URL
}
