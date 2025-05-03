//
//  14000-Kanagawa.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Kanagawa: Region {
    var id = "kanagawa"
    var name = "Kanagawa.swift"
    var tags = ["神奈川", "関東", "首都圏"]
    var color = Color(hex: "#177BB9")
    var code = "JP-14000"
}

extension Region where Self == Kanagawa {
    static var kanagawa: Self { Self() }
}
