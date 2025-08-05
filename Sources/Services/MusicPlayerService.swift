class MusicPlayerService {
    static let shared = MusicPlayerService()

    private var currentSource: MusicSource?
    private var queue: [Song] = []
    private var currentSong: Song?
    private var playbackState: PlaybackState = .stopped

    private init() {}

    func setSource(_ source: MusicSource) {
        self.currentSource = source
        print("🔄 Source set to \(type(of: source))")
    }

    func addToQueue(_ song: Song) {
        queue.append(song)
        print("➕ Added to queue: \(song.title)")
    }

    func play() {
        guard let song = queue.first else {
            print("⚠️ Queue is empty")
            return
        }
        currentSong = song
        currentSource?.play(song: song)
        playbackState = .playing
        print("▶️ Playback state: \(playbackState.rawValue)")
    }

    func pause() {
        currentSource?.pause()
        playbackState = .paused
        print("⏸️ Playback state: \(playbackState.rawValue)")
    }

    func skip() {
        guard queue.count > 1 else {
            print("⚠️ No more songs to skip")
            return
        }
        queue.removeFirst()
        play()
    }

    func stop() {
        currentSource?.stop()
        playbackState = .stopped
        print("⏹️ Playback state: \(playbackState.rawValue)")
    }

    func showQueue() {
        print("📜 Current Queue:")
        for (index, song) in queue.enumerated() {
            print("\(index + 1). \(song.title) by \(song.artist) [\(song.sourceType.rawValue)]")
        }
    }
}