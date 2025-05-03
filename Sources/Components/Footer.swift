//
//  Footer.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct Footer: HTML {
    var body: some HTML {
        Text {
            "Swift と "
            Link("Ignite", target: "https://github.com/twostraws/Ignite")
            " で作成"
        }
        .horizontalAlignment(.center)
        .margin(.top, .xLarge)
        Text("記載されている製品名、サービス名および会社名等は一般に各社の商標、登録商標です。")
            .horizontalAlignment(.center)
    }
}
