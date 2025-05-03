//
//  BadgeStyles.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

enum BadgeStyleRole: Sendable {
    case swiftPrimarySubtleBordered
}

extension Badge {
    func badgeStyle(_ style: BadgeStyleRole) -> some HTML {
        switch style {
        case .swiftPrimarySubtleBordered:
            self.role(.primary)
                .badgeStyle(.subtleBordered)
                .style(.swiftPrimarySubtleBordered)
        }
    }
}

private struct SwiftPrimarySubtleBorderedBadgeStyle: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions)
        -> StyledHTML
    {
        switch environment.colorScheme {
        case .light, nil:
            content
                .style(.color, "rgb(222, 75, 52) !important")
                .style(.backgroundColor, "rgb(222, 75, 52, 0.1) !important")
                .style(.borderColor, "rgb(222, 75, 52, 0.15) !important")
        case .dark:
            content
                .style(.color, "rgb(240, 81, 56) !important")
                .style(.backgroundColor, "rgb(240, 81, 56, 0.1) !important")
                .style(.borderColor, "rgb(240, 81, 56, 0.15) !important")
        }
    }
}

extension Style where Self == SwiftPrimarySubtleBorderedBadgeStyle {
    fileprivate static var swiftPrimarySubtleBordered: Self { Self() }
}
