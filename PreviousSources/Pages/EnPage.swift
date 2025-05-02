import Foundation
import Ignite

struct En: StaticPage {
    var title =  "Japan-\\(region).swift"

    func body(context: PublishingContext) -> [BlockElement] {
        base(context: context, language: .english)
    }
}