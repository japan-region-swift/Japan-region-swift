// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "JapanRegionSwiftWebsite",
    platforms: [.macOS(.v26)],
    dependencies: [
        .package(
            url: "https://github.com/twostraws/Ignite",
            revision: "10ae60a317d6a96cccf8a575f1444070eddf4836"
        ),
        .package(
            url: "https://github.com/treastrain/OpenGraphReader",
            branch: "support-foundation-networking"
        ),
    ],
    targets: [
        .executableTarget(
            name: "Website",
            dependencies: [
                .product(name: "Ignite", package: "Ignite"),
                .product(name: "OpenGraphReader", package: "opengraphreader"),
            ],
            swiftSettings: [
                .treatAllWarnings(as: .error),
            ]
        )
    ],
    swiftLanguageModes: [.v6]
)
