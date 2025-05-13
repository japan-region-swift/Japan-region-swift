//
//  23100-Nagoya.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Nagoya: Region {
    var id = "nagoya"
    var name = "Nagoya.swift"
    var tags = ["名古屋", "中部", "東海"]
    var color = Color(hex: "#FFB74C")
    var code = "JP-23100"
}

extension Region where Self == Nagoya {
    static var nagoya: Self { Self() }
}
