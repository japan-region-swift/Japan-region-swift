//
//  BlogList.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct BlogList: HTML {
    var feeds = BlogFeedCache.load()

    var body: some HTML {
        Section {
            Text("参加者ブログ")
                .font(.title2)
            Grid(feeds) { feed in
                Link(
                    target: feed.url.absoluteString,
                    content: {
                        Card {
                            Image(
                                feed.imageURL!.absoluteString,
                                description: feed.title
                            )
                            Link(
                                feed.title,
                                target: feed.url.absoluteString
                            )
                        }
                    }
                )
                .width(3)
            }
        }
        .horizontalAlignment(.center)
        .padding(.vertical, .large)
    }
}
