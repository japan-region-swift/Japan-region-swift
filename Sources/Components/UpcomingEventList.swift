//
//  UpcomingEventList.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct UpcomingEventList: HTML {
    let events = [
        "WWDC25 Recap - Japan-\\(region).swift"
    ]

    var body: some HTML {
        Section {
            Text("これからのイベント")
                .font(.title2)
            Grid(events) { event in
                Link(
                    target:
                        "https://japan-region-swift.connpass.com/event/353002/",
                    content: {
                        Card(
                            imageName:
                                "https://media.connpass.com/thumbs/f5/76/f57607ecff68691abd4d7ee942f71b39.png",
                            body: {
                                Link(
                                    event,
                                    target:
                                        "https://japan-region-swift.connpass.com/event/353002/"
                                )
                            },
                            footer: {
                                Link(
                                    "connpass で詳細を確認",
                                    target:
                                        "https://japan-region-swift.connpass.com/event/353002/"
                                )
                                .linkStyle(.button)
                                .role(.swiftPrimary)
                            }
                        )
                    }
                )
                .width(4)
            }
        }
        .horizontalAlignment(.center)
        .padding(.vertical, .large)
    }
}
