//
//  NavigationBarBackgroundStyle.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct NavigationBarBackgroundStyle: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions) -> StyledHTML {
        switch environment.colorScheme {
        case .light, nil:
            content
                .background(Color(white: 1, opacity: 0.5))
                .style(.backdropFilter, "blur(20px)")
        case .dark:
            content
                .background(Color(white: 0, opacity: 0.3))
                .style(.backdropFilter, "blur(20px)")
        }
    }
}

extension Style where Self == NavigationBarBackgroundStyle {
    static var navigationBarBackground: Self { Self() }
}
