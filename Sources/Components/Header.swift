//
//  Header.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct Header: HTML {
    var body: some HTML {
        NavigationBar(logo: logo) {
            Link(discord, target: "https://tret.jp/JapanRegionSwiftDiscord")
        }
        .navigationItemAlignment(.trailing)
        .position(.fixedTop)
        .style(.navigationBarBackground)
    }

    private var logo: some InlineElement {
        Image("/images/logo.svg", description: "Japan-\\(region).swift")
            .frame(width: .custom("min(60vw, 300px)"), height: .percent(100%))
    }

    private var discord: some InlineElement {
        Label("Discord に参加", systemImage: "discord")
    }
}
