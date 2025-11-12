//
//  Region.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

protocol Region: Identifiable, Hashable, Sendable {
    nonisolated var id: String { get }
    nonisolated var name: String { get }
    nonisolated var tags: [String] { get }
    nonisolated var color: Color { get }
    nonisolated var code: String { get }
    nonisolated var isInPreparation: Bool { get }
}

extension Region {
    nonisolated var isInPreparation: Bool { false }
}
