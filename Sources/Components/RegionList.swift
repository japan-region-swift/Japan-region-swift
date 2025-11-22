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
        Section("参加地域") {
            forMediumOrLarger
            forSmallOrSmaller
            Alert {
                Grid(spacing: .none) {
                    Text {
                        "あなたの地域を"
                        Strong(
                            Code("Japan-\\(region).swift")
                                .foregroundStyle(.swift)
                        )
                        " の Discord サーバーで新規追加できます"
                    }
                    .horizontalAlignment(.center)
                    .padding(.vertical, 10)
                    .width(9)
                    Text {
                        Link(
                            Label("Discord に参加", systemImage: "discord"),
                            target: "/join"
                        )
                        .linkStyle(.button)
                        .role(.discordPrimary)
                    }
                    .horizontalAlignment(.center)
                    .padding(.vertical, 10)
                    .width(3)
                }
            }
            .role(.swiftPrimary)
        }
        .horizontalAlignment(.center)
        .padding(.vertical, .large)
    }

    private var forMediumOrLarger: some HTML {
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
                "準備中:<wbr>"
                InlineForEach(JapanRegion.all(includesInPreparation: true).filter(\.isInPreparation)) { region in
                    Span(region.name)
                        .margin(.horizontal, .small)
                }
            }
            .horizontalAlignment(.center)
            .width(12)
        }
        .class("d-none", "d-md-flex")
    }

    private var forSmallOrSmaller: some HTML {
        Section {
            ForEach(JapanRegion.all()) { region in
                Section {
                    HStack(alignment: .center) {
                        Image("/images/regions/\(region.id)/cover.png", description: region.name)
                            .frame(maxWidth: .percent(40%))
                        VStack(alignment: .leading) {
                            Text(region.name)
                                .horizontalAlignment(.leading)
                            HStack(spacing: .xSmall) {
                                ForEach(region.tags) { tag in
                                    Badge(tag)
                                        .badgeStyle(.swiftPrimarySubtleBordered)
                                }
                            }
                        }
                    }
                    .padding(10)
                    .cornerRadius(5)
                    .border(.gray.opacity(0.5))
                }
                .padding(5)
            }
            Text {
                "準備中:<wbr>"
                InlineForEach(JapanRegion.all(includesInPreparation: true).filter(\.isInPreparation)) { region in
                    Span(region.name)
                        .margin(.horizontal, .small)
                }
            }
            .horizontalAlignment(.center)
        }
        .class("d-md-none")
        .padding(.top)
    }
}
