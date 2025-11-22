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
        Section("参加者ブログ") {
            forMediumOrLarger
            forSmallOrSmaller
        }
        .horizontalAlignment(.center)
        .padding(.vertical, .large)
    }

    private var forMediumOrLarger: some HTML {
        Grid(feeds) { feed in
            LinkGroup(
                target: feed.url.absoluteString,
                content: {
                    Card {
                        Image(
                            feed.imageURL?.absoluteString ?? "",
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
        .class("d-none", "d-md-flex")
    }

    private var forSmallOrSmaller: some HTML {
        Section {
            ForEach(feeds) { feed in
                LinkGroup(target: feed.url.absoluteString) {
                    HStack(alignment: .center) {
                        Image(feed.imageURL?.absoluteString ?? "", description: feed.title)
                            .frame(maxWidth: .percent(40%))
                        Text(feed.title)
                            .foregroundStyle(.swift)
                            .horizontalAlignment(.leading)
                    }
                    .padding(10)
                    .cornerRadius(5)
                    .border(.white.opacity(0.15))
                }
                .padding(5)
            }
        }
        .class("d-md-none")
        .padding(.top)
    }
}
