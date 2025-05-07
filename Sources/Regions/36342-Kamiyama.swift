//
//  36342-Kamiyama.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Kamiyama: Region {
    var id = "kamiyama"
    var name = "神山.swift"
    var tags = ["神山", "徳島", "四国"]
    var color = Color(hex: "#000064")
    var code = "JP-36342"
}

extension Region where Self == Kamiyama {
    static var kamiyama: Self { Self() }
}
