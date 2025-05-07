//
//  Region.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

protocol Region: Identifiable, Hashable, Sendable {
    var id: String { get }
    var name: String { get }
    var tags: [String] { get }
    var color: Color { get }
    var code: String { get }
    var isInPreparation: Bool { get }
}

extension Region {
    var isInPreparation: Bool { false }
}
