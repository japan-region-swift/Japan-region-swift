//
//  BlogFeed.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation

struct BlogFeed: Sendable {
    let url: URL
    let title: String
    let imageURL: URL?
    let date: Date
}
