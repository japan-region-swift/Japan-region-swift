//
//  BlogFeedCache.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Synchronization

struct BlogFeedCache: Sendable {
    private static let cache = Mutex<[BlogFeed]>([])

    static func save(_ feeds: [BlogFeed]) {
        cache.withLock { $0 = feeds }
    }

    static func load() -> [BlogFeed] {
        cache.withLock { $0 }
    }
}
