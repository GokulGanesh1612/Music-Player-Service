protocol MusicSource {
    func play(song: Song)
    func pause()
    func stop()
    func fetchSongs() -> [Song]
}