//
//  NavigationBarBackgroundStyle.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct NavigationBarBackgroundStyle: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions)
        -> StyledHTML
    {
        switch environment.colorScheme {
        case .light, nil: content.background(Color(hex: "#F7F7F7"))
        case .dark: content.background(Color(hex: "#2A2A2A"))
        }
    }
}

extension Style where Self == NavigationBarBackgroundStyle {
    static var navigationBarBackground: Self { Self() }
}
