//
//  RegionList.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct RegionList: HTML {
    var body: some HTML {
        Section {
            Text("参加地域")
                .font(.title2)
            Grid {
                ForEach(JapanRegion.all()) { region in
                    Card(imageName: "/images/regions/\(region.id)/cover.png") {
                        Text(region.name)
                        ForEach(region.tags) { tag in
                            Badge(tag)
                                .badgeStyle(.swiftPrimarySubtleBordered)
                        }
                    }
                    .width(3)
                }
                Text {
                    "準備中:"
                    ForEach(
                        JapanRegion.all(includesInPreparation: true)
                            .filter(\.isInPreparation)
                    ) { region in
                        Span(region.name)
                            .margin(.horizontal, .small)
                    }
                }
                .horizontalAlignment(.center)
                .width(12)
            }
            Alert {
                Grid(spacing: .none) {
                    Text {
                        "あなたの地域がない場合、"
                        Strong(
                            Code("Japan-\\(region).swift")
                                .foregroundStyle(.swift)
                        )
                        " の Discord サーバーで新規追加できます"
                    }
                    .horizontalAlignment(.center)
                    .width(9)
                    Link(
                        Label("Discord に参加", systemImage: "discord"),
                        target: "https://tret.jp/JapanRegionSwiftDiscord"
                    )
                    .linkStyle(.button)
                    .role(.discordPrimary)
                    .horizontalAlignment(.center)
                    .width(3)
                }
            }
            .role(.swiftPrimary)
        }
        .horizontalAlignment(.center)
        .padding(.vertical, .large)
    }
}
