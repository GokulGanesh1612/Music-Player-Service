class MusicPlayerViewModel {
    private let player = MusicPlayerService.shared

    func loadSongs(from source: MusicSource) {
        player.setSource(source)
        let songs = source.fetchSongs()
        songs.forEach { player.addToQueue($0) }
    }

    func play() { player.play() }
    func pause() { player.pause() }
    func skip() { player.skip() }
    func stop() { player.stop() }
    func showQueue() { player.showQueue() }
}