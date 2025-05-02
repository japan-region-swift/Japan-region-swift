import Foundation

enum RegionSwiftList {
    static let regions: [RegionSwift] = [
        RegionSwift(name: "Hakata.swift", imageFilePath: "/images/regions/hakataswift.png", link: URL(string: "https://hakata-swift.connpass.com")!),
        RegionSwift(name: "Kamiyama.swift", imageFilePath: "/images/regions/kamiyamaswift.png", link: URL(string: "https://kamiyama-swift.connpass.com")!),
        RegionSwift(name: "Chiba.swift", imageFilePath: "/images/regions/chibaswift.png", link: URL(string: "https://chibaswift.connpass.com")!),
        RegionSwift(name: "Kanagawa.swift", imageFilePath: "/images/regions/kanagawa.png", link: URL(string: "https://kanagawaswift.connpass.com")!),
        RegionSwift(name: "Osaka.swift", imageFilePath: "/images/regions/osaka.png", link: URL(string: "https://osaka-swift.connpass.com")!),
        RegionSwift(name: "Minokamo.swift", imageFilePath: "/images/regions/minokamo.png", link: URL(string: "https://minokamo-swift.connpass.com")!),
        RegionSwift(name: "Nagoya.swift", imageFilePath: "/images/regions/nagoya.png", link: URL(string: "https://japan-region-swift.connpass.com/event/343345/")!),
    ]

    struct RegionSwift {
        let name: String
        let imageFilePath: String
        let link: URL
    }
}
