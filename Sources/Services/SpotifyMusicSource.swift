class SpotifyMusicSource: MusicSource {
    func play(song: Song) {
        print("🎧 Streaming from Spotify: \(song.title) by \(song.artist)")
    }

    func pause() {
        print("⏸️ Paused Spotify stream")
    }

    func stop() {
        print("⏹️ Stopped Spotify stream")
    }

    func fetchSongs() -> [Song] {
        return [
            Song(title: "Blinding Lights", artist: "The Weeknd", duration: 200, sourceType: .spotify),
            Song(title: "Levitating", artist: "Dua Lipa", duration: 210, sourceType: .spotify)
        ]
    }
}