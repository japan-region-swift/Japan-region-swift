import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Head {
            MetaTag(name: "og:image", content: "https://japan-region-swift.github.io/Japan-region-swift/images/photos/japan-region-swift.png")
            MetaTag(name: "twitter:title", content: "Japan-region.swift")
            MetaTag(name: "twitter:image", content: "https://japan-region-swift.github.io/Japan-region-swift/images/photos/japan-region-swift.png")
        }

        Body {
            content

            IgniteFooter()
        }
        .padding(.top, .xLarge)
        .padding(.horizontal, .large)
        .customAttribute(name: "style", value: "background-color: \(ColorAssets.background.rawValue)")
    }
}
