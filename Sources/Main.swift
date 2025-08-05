import Foundation

let viewModel = MusicPlayerViewModel()

// Load local songs
let localSource = LocalMusicSource()
viewModel.loadSongs(from: localSource)

// Load Spotify songs
let spotifySource = SpotifyMusicSource()
viewModel.loadSongs(from: spotifySource)

// Show queue
viewModel.showQueue()

// Simulate playback
viewModel.play()
sleep(2)
viewModel.pause()
sleep(1)
viewModel.skip()
sleep(2)
viewModel.stop()