// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "JapanRegionSwiftWebsite",
    platforms: [.macOS(.v15)],
    dependencies: [
        .package(
            url: "https://github.com/twostraws/Ignite",
            branch: "main"
        ),
        .package(
            url: "https://github.com/pzmudzinski/OpenGraphReader.git",
            exact: "1.0.1"
        ),
    ],
    targets: [
        .executableTarget(
            name: "Website",
            dependencies: [
                .product(name: "Ignite", package: "Ignite"),
                .product(name: "OpenGraphReader", package: "opengraphreader"),
            ]
        )
    ],
    swiftLanguageModes: [.v6]
)
