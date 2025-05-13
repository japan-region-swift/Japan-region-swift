//
//  MainLayout.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some HTML {
        Body {
            Header()
                .padding(.bottom, 80)
            content
            Divider()
            Footer()
                .margin(.bottom, 80)
        }
    }
}
