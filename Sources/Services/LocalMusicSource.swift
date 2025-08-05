class LocalMusicSource: MusicSource {
    func play(song: Song) {
        print("🎵 Playing locally: \(song.title) by \(song.artist)")
    }

    func pause() {
        print("⏸️ Paused local playback")
    }

    func stop() {
        print("⏹️ Stopped local playback")
    }

    func fetchSongs() -> [Song] {
        return [
            Song(title: "Tum Hi Ho", artist: "Arijit Singh", duration: 225, sourceType: .local),
            Song(title: "Chaiyya Chaiyya", artist: "Sukhwinder Singh", duration: 260, sourceType: .local)
        ]
    }
}