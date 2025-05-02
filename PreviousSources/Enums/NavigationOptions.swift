import Foundation
import Ignite

enum NavigationOptions: String, CaseIterable {
    case connpass
    case event
    case blog
    case regionSwift

    func title(model: JapanRegionSwiftModel) -> String {
        switch self {
            case .connpass: "Connpass"
            case .event: model.event.title
            case .blog: "Blog"
            case .regionSwift: "Community"
        }
    }

    func link(model: JapanRegionSwiftModel) -> Link {
        switch self {
            case .event, .blog, .regionSwift:
            Link(target: "#\(rawValue)") {
                Text(title(model: model))
                    .margin(.none)
                    .foregroundStyle(.primaryColor)
            }
            case .connpass: Link(target: "https://japan-region-swift.connpass.com") {
                Text(title(model: model))
                    .margin(.none)
                    .foregroundStyle(.primaryColor)
            }
        }
    }
}