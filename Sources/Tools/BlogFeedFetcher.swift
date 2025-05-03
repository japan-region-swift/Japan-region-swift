//
//  BlogFeedFetcher.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct BlogFeedFetcher {
    static func fetch() async throws -> [BlogFeed] {
        let feeds = await MainActor.run {
            @Environment(\.articles) var articles
            return articles.typed("blog-feeds")
        }
        let fetcher = ArticleFetcher()
        return try await withThrowingTaskGroup { group in
            for feed in feeds {
                guard await !feed.hasAutomaticDate, let url = await feed.url
                else { continue }
                let date = await feed.date
                group.addTask {
                    let (articleURL, title, imageURL) = try await fetcher.fetch(
                        url: url
                    )
                    let utcDateString = date.formatted(.iso8601).replacing(
                        "Z",
                        with: "+09:00"
                    )
                    let date = ISO8601DateFormatter().date(from: utcDateString)!
                    return BlogFeed(
                        url: articleURL,
                        title: title,
                        imageURL: imageURL,
                        date: date
                    )
                }
            }
            return try await group.reduce(into: []) { $0.append($1) }
                .sorted { $0.date > $1.date }
        }
    }
}
