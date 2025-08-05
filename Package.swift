// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MusicPlayer",
    platforms: [.macOS(.v12)],
    products: [
        .executable(name: "MusicPlayer", targets: ["MusicPlayer"])
    ],
    targets: [
        .target(
            name: "MusicPlayer",
            dependencies: []
        )
    ]
)