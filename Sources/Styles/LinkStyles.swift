//
//  LinkStyles.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

enum LinkRole: Sendable {
    case swiftPrimary
    case discordPrimary
}

extension Link {
    func role(_ role: LinkRole) -> some HTML {
        switch role {
        case .swiftPrimary:
            self.role(.primary)
                .style(.swiftPrimary)
                .hoverEffect { effect in
                    effect
                        .style(.backgroundColor, "#E42E11")
                        .style(.borderColor, "#E42E11")
                }
        case .discordPrimary:
            self.role(.primary)
                .style(.discordPrimary)
                .hoverEffect { effect in
                    effect
                        .style(.backgroundColor, "#2939EE")
                        .style(.borderColor, "#2939EE")
                }
        }
    }
}

private struct SwiftPrimaryLinkStyle: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions)
        -> StyledHTML
    {
        content
            .style(.color, "#FFFFFF")
            .style(.backgroundColor, "#F05138")
            .style(.borderColor, "#F05138")
    }
}

extension Style where Self == SwiftPrimaryLinkStyle {
    fileprivate static var swiftPrimary: Self { Self() }
}

private struct DiscordPrimaryLinkStyle: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions)
        -> StyledHTML
    {
        content
            .style(.color, "#FFFFFF")
            .style(.backgroundColor, "#5865F2")
            .style(.borderColor, "#5865F2")
    }
}

extension Style where Self == DiscordPrimaryLinkStyle {
    fileprivate static var discordPrimary: Self { Self() }
}
