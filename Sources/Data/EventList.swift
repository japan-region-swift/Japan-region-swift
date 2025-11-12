import Foundation

enum EventList {
    static let events: [Event] = [
        Event(name: "Kanagawa.swift #2", link: URL(string: "https://japan-region-swift.connpass.com/event/365671/")!),
        Event(name: "HAKATA.swift feat. Japan-\\(region).swift #1", link: URL(string: "https://hakata-swift.connpass.com/event/353191/")!),
        Event(name: "Nagoya.swift #1", link: URL(string: "https://japan-region-swift.connpass.com/event/343345/")!),
        Event(name: "Minokamo.swift #1", link: URL(string: "https://minokamo-swift.connpass.com/event/336644/")!),
        Event(name: "Osaka.swift #1", link: URL(string: "https://osaka-swift.connpass.com/event/336324/")!),
        Event(name: "Chiba.swift #2", link: URL(string: "https://chibaswift.connpass.com/event/331925/")!),
        Event(name: "Kanagawa.swift #1", link: URL(string: "https://kanagawaswift.connpass.com/event/332163/")!),
        Event(name: "Chiba.swift #1", link: URL(string: "https://chibaswift.connpass.com/event/328367/")!),
        Event(name: "神山.swift #1", link: URL(string: "https://kamiyama-swift.connpass.com/event/319105/")!),
    ]

    struct Event {
        let name: String
        let link: URL
    }
}