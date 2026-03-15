import Foundation

enum BlogPostList {
    static let posts: [BlogPost] = [
        // 神山.swift
        BlogPost(displayName: "地元徳島で神山.swiftを開催しました！#神山swift", link: URL(string: "https://note.com/hinakkograshi/n/nb43df2589ae8")!),
        BlogPost(displayName: "神山.swift やりきったぞーー！ 運営日記", link: URL(string: "https://note.com/akidon0000/n/n837a9ca9b1db")!),
        // Chiba.swift #1
        BlogPost(displayName: "Chiba.swift #1 まとめ", link: URL(string: "https://togetter.com/li/2437363")!),
        // Kanagawa.swift #1
        BlogPost(displayName: "Kanagawa.swiftを開催しました！", link: URL(string: "https://zenn.dev/ryomm/articles/687934050f9adf")!),
        BlogPost(displayName: "Kanagawa.swiftレポート", link: URL(string: "https://note.com/fromkk/n/ne01181e70c11")!),
        BlogPost(displayName: "Kanagawa.swift #1 まとめ", link: URL(string: "https://togetter.com/li/2462306")!),
        // Chiba.swift #2
        BlogPost(displayName: "【第2回Chiba.swift開催レポート】千葉に在住・在勤のiOSエンジニアによる一夜限りの交流の様子をお届けします", link: URL(string: "https://note.fuller-inc.com/n/ndae48a74ec24")!),
        // Osaka.swift #1
        BlogPost(displayName: "Osaka.swiftを開催しました", link: URL(string: "https://note.com/totokit4/n/n06f0a62e9832")!),
        BlogPost(displayName: "Osaka.swiftでスタッフ＆県外LT初登壇してきました！", link: URL(string: "https://note.com/hinakkograshi/n/nee0a83fcfa4b")!),
        // Minokamo.swift #1
        BlogPost(displayName: "Minokamo.swift #1 を開催しました！ #minokamo_swift", link: URL(string: "https://note.com/fromkk/n/nc2b4ab7b14e0?sub_rt=share_pb")!),
        BlogPost(displayName: "Minokamo.swift#1 〜foo bar cafeのフィナーレ〜", link: URL(string: "https://www.kamo-it.org/blog/minokamo-swift-vol1/")!),
        // Nagoya.swift #1
        BlogPost(displayName: "Nagoya.swift＃1やりました #nagoya_swift", link: URL(string: "https://note.com/asashin227/n/nfcfb0b207045")!),
        BlogPost(displayName: "Nagoya.swift#1 開催までのあれこれ", link: URL(string: "https://note.com/carpediemzzz/n/naae22795e97f")!),
        BlogPost(displayName: "Nagoya.swiftに行ってきました", link: URL(string: "https://note.com/1mash0/n/n841b3e6cd80e")!),
        // HAKATA.swift
        BlogPost(displayName: "HAKATA.swift feat. Japan-region.swift #1を開催しました", link: URL(string: "https://note.com/shiz_t/n/ne1723bb4408c")!),
        // Kanagawa.swift #2
        BlogPost(displayName: "Kanagawa.swift #2 にスタッフとして参加しました", link: URL(string: "https://note.com/fromkk/n/n3002971efcd7?sub_rt=share_pb")!),
        BlogPost(displayName: "Kanagawa.swift #2を開催しました！", link: URL(string: "https://note.com/hinakkograshi/n/nfcfea6f9eb74?app_launch=false")!),
        BlogPost(displayName: "Kanagawa.swift #2 がカヤックオフィスで開催されました ", link: URL(string: "https://techblog.kayac.com/report-kanagawa-swift-2")!),
        // Okinawa.swift
        BlogPost(displayName: "Okinawa.swift×Swift・Kotlin愛好会コラボ合宿レポート", link: URL(string: "https://note.com/entaku0818/n/ncf7535d95737?app_launch=false")!),
        // Hakodate.swift
        BlogPost(displayName: "Hakodate.swiftを開催しました", link: URL(string: "https://yamakentoc.hatenablog.com/entry/2026/03/08/150555")!),
    ]

    struct BlogPost: Sendable {
        let displayName: String
        let link: URL
    }
}
