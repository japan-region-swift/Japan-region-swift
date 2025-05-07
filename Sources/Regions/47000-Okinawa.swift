//
//  47000-Okinawa.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Okinawa: Region {
    var id = "okinawa"
    var name = "Okinawa.swift"
    var tags = ["沖縄"]
    var color = Color(hex: "#C8003E")
    var code = "JP-47000"

    var isInPreparation = true
}

extension Region where Self == Okinawa {
    static var okinawa: Self { Self() }
}
