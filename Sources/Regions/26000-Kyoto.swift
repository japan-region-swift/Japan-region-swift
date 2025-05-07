//
//  26000-Kyoto.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Kyoto: Region {
    var id = "kyoto"
    var name = "Kyoto.swift"
    var tags = ["京都", "近畿", "関西"]
    var color = Color(hex: "#720062")
    var code = "JP-26000"

    var isInPreparation = true
}

extension Region where Self == Kyoto {
    static var kyoto: Self { Self() }
}
