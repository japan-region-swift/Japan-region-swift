import Foundation
import Ignite

struct Jp: StaticPage {
    var title = "Japan-\\(region).swift"

    func body(context: PublishingContext) -> [BlockElement] {
        base(context: context, language: .japanese)
    }
}