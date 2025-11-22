//
//  21211-Minokamo.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

nonisolated struct Minokamo: Region {
    var id = "minokamo"
    var name = "Minokamo.swift"
    var tags = ["美濃加茂", "岐阜", "中部", "東海"]
    var color = Color(hex: "#195AA1")
    var code = "JP-21211"
}

extension Region where Self == Minokamo {
    nonisolated static var minokamo: Self { Self() }
}
