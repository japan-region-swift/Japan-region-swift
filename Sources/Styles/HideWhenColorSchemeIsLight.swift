//
//  HideWhenColorSchemeIsLight.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct HideWhenColorSchemeIsLight: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions)
        -> StyledHTML
    {
        switch environment.colorScheme {
        case .light: content.hidden()
        case .dark, nil: content
        }
    }
}

extension Style where Self == HideWhenColorSchemeIsLight {
    static var hiddenWhenLightScheme: Self { Self() }
}

extension HTML {
    func hiddenWhenLightScheme() -> some HTML {
        style(.hiddenWhenLightScheme)
    }
}
