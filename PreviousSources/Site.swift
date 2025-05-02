import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = JapanRegionSwiftSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct JapanRegionSwiftSite: Site {
    var name = "Japan-region.swift"
    var titleSuffix = " – Swift Region Events in Japan"
    var url = URL(string: "https://japan-region-swift.github.io/Japan-region-swift")!
    // var url =  URL(StaticString(stringLiteral: "http://localhost:8000"))
    var builtInIconsEnabled = true
    var pageWidth = 12
    var favicon = URL(string: "/images/favicon.png")
    var author = "japan-region.swift organization"

    var homePage = Jp()
    var theme = MyTheme()
    var pages: [any StaticPage] {
        Jp()
        En()
    }
}
