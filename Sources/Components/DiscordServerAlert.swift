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
        .margin(.vertical, .large)
    }
}
