//
//  JapanRegion.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation

enum JapanRegion {
    static func all(includesInPreparation: Bool = false) -> [any Region] {
        [
            .hakodate,
            .chiba,
            .kanagawa,
            .minokamo,
            .nagoya,
            .kyoto,
            .osaka,
            .kamiyama,
            .hakata,
            .okinawa,
        ]
        .filter {
            includesInPreparation ? true : !$0.isInPreparation
        }
    }
}
