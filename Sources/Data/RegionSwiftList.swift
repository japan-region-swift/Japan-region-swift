import Foundation

enum RegionSwiftList {
    static let regions: [RegionSwift] = [
        RegionSwift(name: "Hakata.swift", imageFilePath: "/Japan-region-swift/images/regions/hakataswift.png", link: URL(string: "https://hakata-swift.connpass.com")!),
        RegionSwift(name: "Kamiyama.swift", imageFilePath: "/Japan-region-swift/images/regions/kamiyamaswift.png", link: URL(string: "https://kamiyama-swift.connpass.com")!),
        RegionSwift(name: "Chiba.swift", imageFilePath: "/Japan-region-swift/images/regions/chibaswift.png", link: URL(string: "https://chibaswift.connpass.com")!),
        RegionSwift(name: "Kanagawa.swift", imageFilePath: "/Japan-region-swift/images/regions/kanagawa.png", link: URL(string: "https://kanagawaswift.connpass.com")!),
        RegionSwift(name: "Osaka.swift", imageFilePath: "/Japan-region-swift/images/regions/osaka.png", link: URL(string: "https://osaka-swift.connpass.com")!),
        RegionSwift(name: "Minokamo.swift", imageFilePath: "/Japan-region-swift/images/regions/minokamo.png", link: URL(string: "https://minokamo-swift.connpass.com")!),
        RegionSwift(name: "Nagoya.swift", imageFilePath: "/Japan-region-swift/images/regions/nagoya.png", link: URL(string: "https://japan-region-swift.connpass.com/event/343345/")!),
        RegionSwift(name: "TamaRiver.swift", imageFilePath: "/Japan-region-swift/images/regions/tamariverswift.png", link: URL(string: "https://japan-region-swift.connpass.com/event/357612/")!),
        RegionSwift(name: "Okinawa.swift", imageFilePath: "/Japan-region-swift/images/regions/okinawaswift.jpg", link: URL(string: "https://japan-region-swift.connpass.com/event/370422/")!),
        RegionSwift(name: "Hakodate.swift", imageFilePath: "/Japan-region-swift/images/regions/hakodateswift.png", link: URL(string: "https://japan-region-swift.connpass.com/event/371217/")!),
    ]

    struct RegionSwift: Sendable {
        let name: String
        let imageFilePath: String
        let link: URL
    }
}
