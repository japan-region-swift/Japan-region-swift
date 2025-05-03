//
//  40132-Hakata.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Hakata: Region {
    var id = "hakata"
    var name = "HAKATA.swift"
    var tags = ["博多", "福岡", "九州"]
    var color = Color(hex: "#EF0016")
    var code = "JP-40132"
}

extension Region where Self == Hakata {
    static var hakata: Self { Self() }
}
