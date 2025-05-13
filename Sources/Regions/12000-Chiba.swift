//
//  12000-Chiba.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Chiba: Region {
    var id = "chiba"
    var name = "Chiba.swift"
    var tags = ["千葉", "関東", "首都圏"]
    var color = Color(hex: "#006EA5")
    var code = "JP-12000"
}

extension Region where Self == Chiba {
    static var chiba: Self { Self() }
}
