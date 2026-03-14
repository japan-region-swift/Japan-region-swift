import Foundation
import Ignite

@MainActor
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
            Link(title(model: model), target: "#\(rawValue)")
            case .connpass:
            Link(title(model: model), target: "https://japan-region-swift.connpass.com")
        }
    }
}
