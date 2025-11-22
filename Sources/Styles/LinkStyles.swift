//
//  LinkStyles.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

nonisolated enum LinkRole: Sendable {
    case swiftPrimary
    case discordPrimary
    case notePrimary
}

extension Link {
    func role(_ role: LinkRole) -> some InlineElement {
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
        case .notePrimary:
            self.role(.primary)
                .style(.notePrimary)
                .hoverEffect { effect in
                    effect
                        .style(.backgroundColor, "#1E7B65")
                        .style(.borderColor, "#1E7B65")
                }
        }
    }
}

private struct SwiftPrimaryLinkStyle: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions) -> StyledHTML {
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
    func style(content: StyledHTML, environment: EnvironmentConditions) -> StyledHTML {
        content
            .style(.color, "#FFFFFF")
            .style(.backgroundColor, "#5865F2")
            .style(.borderColor, "#5865F2")
    }
}

extension Style where Self == DiscordPrimaryLinkStyle {
    fileprivate static var discordPrimary: Self { Self() }
}

private struct NotePrimaryLinkStyle: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions) -> StyledHTML {
        content
            .style(.color, "#FFFFFF")
            .style(.backgroundColor, "#2CB696")
            .style(.borderColor, "#2CB696")
    }
}

extension Style where Self == NotePrimaryLinkStyle {
    fileprivate static var notePrimary: Self { Self() }
}
