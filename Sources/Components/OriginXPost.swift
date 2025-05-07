//
//  OriginXPost.swift
//  JapanRegionSwiftWebsite
//
//  Created by treastrain on 2025/04/20.
//

import Foundation
import Ignite

struct OriginXPost: HTML {
    var body: some HTML {
        Section {
            """
            <blockquote class="twitter-tweet tw-align-center" lang="ja"><p lang="ja" dir="ltr">日本の各地域で行われる Swift 関連コミュニティイベントの情報交換等にお使いいただける「Japan-\\(region).swift」の Discord サーバーを立ち上げました。<br><br>招待リンク: <a href="https://t.co/srw0XnanDV">https://t.co/srw0XnanDV</a><br><br>参加者同士の交流や、各地域での運営の知見共有等にもぜひお役立てください……！！！<a href="https://twitter.com/hashtag/swiftlang?src=hash&amp;ref_src=twsrc%5Etfw">#swiftlang</a> <a href="https://t.co/ybI8y69scn">pic.twitter.com/ybI8y69scn</a></p>&mdash; treastrain / Tanaka.R (@treastrain) <a href="https://twitter.com/treastrain/status/1853357269989376204?ref_src=twsrc%5Etfw">2024年11月4日</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
            """
        }
        .horizontalAlignment(.center)
        .hiddenWhenDarkScheme()
        Section {
            """
            <blockquote class="twitter-tweet tw-align-center" data-theme="dark" lang="ja"><p lang="ja" dir="ltr">日本の各地域で行われる Swift 関連コミュニティイベントの情報交換等にお使いいただける「Japan-\\(region).swift」の Discord サーバーを立ち上げました。<br><br>招待リンク: <a href="https://t.co/srw0XnanDV">https://t.co/srw0XnanDV</a><br><br>参加者同士の交流や、各地域での運営の知見共有等にもぜひお役立てください……！！！<a href="https://twitter.com/hashtag/swiftlang?src=hash&amp;ref_src=twsrc%5Etfw">#swiftlang</a> <a href="https://t.co/ybI8y69scn">pic.twitter.com/ybI8y69scn</a></p>&mdash; treastrain / Tanaka.R (@treastrain) <a href="https://twitter.com/treastrain/status/1853357269989376204?ref_src=twsrc%5Etfw">2024年11月4日</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
            """
        }
        .horizontalAlignment(.center)
        .hiddenWhenLightScheme()
    }
}
