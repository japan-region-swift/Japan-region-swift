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
    ],
    targets: [
        .executableTarget(
            name: "Website",
            dependencies: [
                .product(name: "Ignite", package: "Ignite"),
            ]
        )
    ],
    swiftLanguageModes: [.v6]
)
