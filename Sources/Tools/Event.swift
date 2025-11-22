//
//  Event.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/11/07.
//

import Foundation

nonisolated struct Event: Codable, Sendable {
    var name: String
    var url: URL
    var startDate: Date
    var endDate: Date
    var thumbnailURL: URL
}

extension Event {
    nonisolated init(name: String, url: StaticString, startDate: String, endDate: String, thumbnailURL: StaticString) {
        self.name = name
        self.url = URL(static: url)
        self.startDate = try! Date(startDate, strategy: .iso8601)
        self.endDate = try! Date(endDate, strategy: .iso8601)
        self.thumbnailURL = URL(static: thumbnailURL)
    }
}

extension Event {
    nonisolated static let okinawaSwift1 = Event(
        name: "【開発合宿】Okinawa.swift×Swift・Kotlin愛好会コラボ合宿 in 沖縄",
        url: "https://japan-region-swift.connpass.com/event/370422/",
        startDate: "2025-11-22T15:00:00+09:00",
        endDate: "2025-11-23T15:00:00+09:00",
        thumbnailURL: "https://media.connpass.com/thumbs/5d/8d/5d8ddc1014accd6133500d8aa311a9cd.png"
    )
}

extension Event {
    nonisolated static let hakodateSwift1 = Event(
        name: "Hakodate.swift #1",
        url: "https://japan-region-swift.connpass.com/event/371217/",
        startDate: "2026-02-22T13:00:00+09:00",
        endDate: "2026-02-22T18:00:00+09:00",
        thumbnailURL: "https://media.connpass.com/thumbs/2a/18/2a18e594f36a564cd4cba346b8cc66ce.png"
    )
}
