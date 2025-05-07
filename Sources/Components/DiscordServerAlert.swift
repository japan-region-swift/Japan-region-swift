//
//  DiscordServerAlert.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/27.
//

import Foundation
import Ignite

struct DiscordServerAlert: HTML {
    var body: some HTML {
        Alert {
            Grid(spacing: .none) {
                Text {
                    Strong(
                        Code("Japan-\\(region).swift").foregroundStyle(.swift)
                    )
                    " は Discord サーバーをメインに交流しています"
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
        .margin(.vertical, .large)
    }
}
