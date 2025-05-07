//
//  Article+.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

extension Article {
    var url: URL? {
        (metadata["url"] as? String).flatMap(URL.init(string:))
    }
}
