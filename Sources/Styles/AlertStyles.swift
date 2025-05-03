//
//  AlertStyles.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

enum AlertRole: Sendable {
    case swiftPrimary
}

extension Alert {
    func role(_ role: AlertRole) -> some HTML {
        switch role {
        case .swiftPrimary:
            self.role(.primary)
                .style(.swiftPrimary)
        }
    }
}

private struct SwiftPrimaryAlertStyle: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions)
        -> StyledHTML
    {
        switch environment.colorScheme {
        case .light, nil:
            content
                .style(.color, "rgb(222, 75, 52)")
                .style(.backgroundColor, "rgb(222, 75, 52, 0.1)")
                .style(.borderColor, "rgb(222, 75, 52, 0.15)")
        case .dark:
            content
                .style(.color, "rgb(240, 81, 56)")
                .style(.backgroundColor, "rgb(240, 81, 56, 0.1)")
                .style(.borderColor, "rgb(240, 81, 56, 0.15)")
        }
    }
}

extension Style where Self == SwiftPrimaryAlertStyle {
    fileprivate static var swiftPrimary: Self { Self() }
}
