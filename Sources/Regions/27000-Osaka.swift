//
//  27000-Osaka.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Osaka: Region {
    var id = "osaka"
    var name = "Osaka.swift"
    var tags = ["大阪", "近畿", "関西"]
    var color = Color(hex: "#183194")
    var code = "JP-27000"
}

extension Region where Self == Osaka {
    static var osaka: Self { Self() }
}
