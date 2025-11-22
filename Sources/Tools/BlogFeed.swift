//
//  BlogFeed.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation

nonisolated struct BlogFeed: Sendable {
    var url: URL
    var title: String
    var imageURL: URL?
    var date: Date
}
