//
//  WebSite.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

@main
struct WebSite: Site {
    static func main() async throws {
        var site = Self()
        try await site.publish()
    }

    // MARK: - Site

    var author = "Japan-\\(region).swift"
    var name = "Japan-\\(region).swift"
    var description: String? =
        "日本各地の Swift コミュニティがつながり、全国の Swift を使うデベロッパが交流と知見の共有を行うためのコミュニケーションハブ。"
    var language: Language = .japanese
    var url = URL(static: "https://japan-region-swift.github.io")
    var timeZone = TimeZone(identifier: "Asia/Tokyo")
    var homePage = HomePage()
    var layout = MainLayout()
    var lightTheme: (any Theme)? = LightTheme()
    var darkTheme: (any Theme)? = DarkTheme()
    var favicon: URL? = URL(static: "/images/favicon.png")
    var articlePages: [any ArticlePage] = [
        BlogFeedPage()
    ]

    func prepare() async throws {
        let blogFeeds = try await BlogFeedFetcher.fetch()
        BlogFeedCache.save(blogFeeds)
    }
}
