import Foundation
import Ignite

struct Jp: StaticPage {
    var title = "Japan-\\(region).swift"

    var body: some HTML {
        Base(language: .japanese)
    }
}
