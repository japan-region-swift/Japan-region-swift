//
//  Preamble.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/28.
//

import Foundation
import Ignite

struct Preamble: HTML {
    var body: some HTML {
        Section {
            Text {
                Span {
                    Strong(
                        Code("Japan-\\(region).swift").foregroundStyle(.swift)
                    )
                    " は、<br>"
                    "日本各地の<wbr> Swift コミュニティが<wbr>つながり、<wbr>全国の<wbr> Swift を使う<wbr>デベロッパが<wbr>交流と<wbr>知見の共有を<wbr>行うための<wbr>コミュニケーションハブです。"
                }
                .style(.wordBreak, "keep-all")
                .style(.overflowWrap, "break-word")
            }
            .font(.system(.title1, size: .rem(1.75)))
            .lineSpacing(.standard)
        }
        .horizontalAlignment(.center)
        .padding(.vertical, .large)
    }
}
