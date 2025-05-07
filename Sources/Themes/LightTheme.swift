//
//  LightTheme.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct LightTheme: Theme {
    var colorScheme: ColorScheme = .light
    var background = Color(hex: "#FFFFFF")
    var secondaryBackground = Color(hex: "#F7F7F7")
    var tertiaryBackground = Color(hex: "#E8E8E8")
    var link = Color.swift
    var hoveredLink = Color.swift.opacity(0.8)
}
