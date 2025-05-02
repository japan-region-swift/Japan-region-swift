import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context) {
                MetaTag(name: "og:image", content: "https://japan-region-swift.github.io/Japan-region-swift/images/photos/japan-region-swift.png")
                MetaTag(name: "twitter:title", content: "Japan-region.swift")
                MetaTag(name: "twitter:image", content: "https://japan-region-swift.github.io/Japan-region-swift/images/photos/japan-region-swift.png")
            }

            Body {
                page.body

                IgniteFooter()
            }
            .style("background-color: \(ColorAssets.background.rawValue)")
            .padding(.top, 80)
            .padding(.horizontal, 24)
        }
    }
}
