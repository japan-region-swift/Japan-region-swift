import Foundation
import Ignite

struct NavBar: HTML {
    @Environment(\.site) var site

    let model: JapanRegionSwiftModel
    let language: LanguageType

    var body: some HTML {
        NavigationBar {
            for option in NavigationOptions.allCases {
                option.link(model: model)
            }
            Link("\(language.flag) \(model.language)", target: sitePath(for: language.targetPage))
        } logo: {
            Link(logo, target: "\(site.url.path)/")
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.secondaryColor)
        .position(.fixedTop)
    }

    /// Prefixes a page path with the site's subpath (e.g. "/Japan-region-swift")
    /// so links work when the site is hosted under a subdirectory such as GitHub Pages.
    private func sitePath(for page: any StaticPage) -> String {
        "\(site.url.path)\(page.path)"
    }

    private var logo: some InlineElement {
        Span(model.name)
            .fontWeight(.bold)
            .margin(.none)
            .font(.title4)
            .foregroundStyle(.primaryColor)
    }
}
