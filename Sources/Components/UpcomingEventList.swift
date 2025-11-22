//
//  UpcomingEventList.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct UpcomingEventList: HTML {
    let events: [Event] = [
        .okinawaSwift1,
        .hakodateSwift1,
    ]

    var body: some HTML {
        Section("これからのイベント") {
            forMediumOrLarger
            forSmallOrSmaller
        }
        .horizontalAlignment(.center)
        .padding(.vertical, .large)
    }

    private var forMediumOrLarger: some HTML {
        Grid(events) { event in
            LinkGroup(target: event.url.absoluteString) {
                Card(
                    imageName: event.thumbnailURL.absoluteString,
                    body: { Link(event.name, target: event.url) },
                    footer: {
                        Link("詳細を見る", target: event.url)
                            .linkStyle(.button)
                            .role(.swiftPrimary)
                    }
                )
            }
            .width(4)
        }
        .class("d-none", "d-md-flex")
    }

    private var forSmallOrSmaller: some HTML {
        Section {
            ForEach(events) { event in
                LinkGroup(target: event.url.absoluteString) {
                    HStack(alignment: .center) {
                        Image(event.thumbnailURL.absoluteString, description: event.name)
                            .frame(maxWidth: .percent(40%))
                        Text(event.name)
                            .foregroundStyle(.swift)
                            .horizontalAlignment(.leading)
                    }
                    .padding(10)
                    .cornerRadius(5)
                    .border(.gray.opacity(0.5))
                }
                .padding(5)
            }
        }
        .class("d-md-none")
        .padding(.top)
    }
}
