//
//  01202-Hakodate.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Hakodate: Region {
    var id = "hakodate"
    var name = "Hakodate.swift"
    var tags = ["函館", "渡島", "道南", "北海道"]
    var color = Color(hex: "#E73562")
    var code = "JP-01202"

    var isInPreparation = true
}

extension Region where Self == Hakodate {
    static var hakodate: Self { Self() }
}
