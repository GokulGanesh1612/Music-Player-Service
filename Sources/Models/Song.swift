import Foundation

enum PlaybackState: String {
    case playing, paused, stopped
}

enum MusicSourceType: String {
    case local, spotify
}

struct Song: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let duration: Double
    let sourceType: MusicSourceType
}