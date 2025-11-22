//
//  ArticleFetcher.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import OpenGraphReader

nonisolated enum ArticleFetcher: Sendable {
    @concurrent
    static func fetch(url: URL) async throws -> (
        url: URL, title: String, imageURL: URL?
    ) {
        let ogpReader = OpenGraphReader()
        let response = try await ogpReader.fetch(url: url)
        let url = response.url ?? url
        let title = response.title ?? url.absoluteString
        let imageURL = response.imageSecureURL ?? response.imageURL
        return (url: url, title: title, imageURL: imageURL)
    }
}
