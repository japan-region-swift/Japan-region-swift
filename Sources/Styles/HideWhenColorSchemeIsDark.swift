//
//  HideWhenColorSchemeIsDark.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct HideWhenColorSchemeIsDark: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions)
    -> StyledHTML
    {
        switch environment.colorScheme {
        case .light, nil: content
        case .dark: content.hidden()
        }
    }
}

extension Style where Self == HideWhenColorSchemeIsDark {
    static var hiddenWhenDarkScheme: Self { Self() }
}

extension HTML {
    func hiddenWhenDarkScheme() -> some HTML {
        style(.hiddenWhenDarkScheme)
    }
}
