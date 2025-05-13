//
//  DarkTheme.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct DarkTheme: Theme {
    var colorScheme: ColorScheme = .dark
    var background = Color(hex: "#000000")
    var secondaryBackground = Color(hex: "#161616")
    var tertiaryBackground = Color(hex: "#2A2A2A")
    var link = Color.swift
    var hoveredLink = Color.swift.opacity(0.8)
}
