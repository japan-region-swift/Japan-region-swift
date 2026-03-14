import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = JapanRegionSwiftSite()

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
    var builtInIconsEnabled: BootstrapOptions = .localBootstrap
    var favicon = URL(string: "/images/favicon.png")
    var author = "japan-region.swift organization"

    var darkTheme: (any Theme)? = nil
    var homePage = Jp()
    var layout = MainLayout()

    var staticPages: [any StaticPage] {
        Jp()
        En()
    }
}
