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
    private var recents: ArraySlice<BlogFeed> { feeds[0..<4] }
    private var pasts: ArraySlice<BlogFeed> { feeds[4..<feeds.indices.endIndex] }

    var body: some HTML {
        Section("参加者ブログ") {
            forMediumOrLarger
            forSmallOrSmaller
        }
        .horizontalAlignment(.center)
        .padding(.vertical, .large)
    }

    private var forMediumOrLarger: some HTML {
        Section {
            Section {
                Grid(recents) { feed in
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
                                .target(.blank)
                            }
                        }
                    )
                    .target(.blank)
                    .width(3)
                }
            }
            Accordion {
                Item("もっとみる") {
                    Grid(pasts) { feed in
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
                                    .target(.blank)
                                }
                            }
                        )
                        .target(.blank)
                        .width(3)
                    }
                }
            }
            .headerForegroundStyle(.swift)
            .headerBackground(.clear, open: .swift.opacity(0.15))
            .borderColor(.gray.opacity(0.5))
            .padding(.top)
            noteMagazineAlert
        }
        .class("d-none", "d-md-block")
    }

    private var forSmallOrSmaller: some HTML {
        Section {
            Section {
                ForEach(recents) { feed in
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
                        .border(.gray.opacity(0.5))
                    }
                    .target(.blank)
                    .padding(5)
                }
            }
            Accordion {
                Item("もっとみる") {
                    ForEach(pasts) { feed in
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
                            .border(.gray.opacity(0.5))
                        }
                        .target(.blank)
                        .padding(5)
                    }
                }
            }
            .headerForegroundStyle(.swift)
            .headerBackground(.clear, open: .swift.opacity(0.15))
            .borderColor(.gray.opacity(0.5))
            .padding(.top)
            noteMagazineAlert
        }
        .class("d-md-none")
        .padding(.top)
    }

    private var noteMagazineAlert: some HTML {
        Alert {
            Grid(spacing: .none) {
                Text {
                    "「"
                    Strong(
                        Code("Japan-\\(region).swift").foregroundStyle(.swift)
                    )
                    "」の note マガジンに<wbr>参加者による記事が<wbr>まとまっています"
                }
                .horizontalAlignment(.center)
                .padding(.vertical, 10)
                .width(9)
                Text {
                    Link(
                        Label("note マガジンを見る", systemImage: "book"),
                        target: "https://note.com/fromkk/m/m6965415c6142"
                    )
                    .target(.blank)
                    .linkStyle(.button)
                    .role(.notePrimary)
                }
                .horizontalAlignment(.center)
                .padding(.vertical, 10)
                .width(3)
            }
        }
        .role(.notePrimary)
        .margin(.vertical, .large)
    }
}
