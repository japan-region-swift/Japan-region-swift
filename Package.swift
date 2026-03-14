// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Japan-Region-Swift",
    platforms: [.macOS(.v15)],
    dependencies: [
        .package(url: "https://github.com/twostraws/Ignite.git", from: "0.6.4")
    ],
    targets: [
        .executableTarget(
            name: "Japan-Region-Swift",
            dependencies: ["Ignite"]),
    ]
)
