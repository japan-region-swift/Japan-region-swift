import Foundation
import Ignite

struct RegionSwiftComponent: HTML {
    var body: some HTML {
        Text("Community")
            .font(.title2)
            .id(NavigationOptions.regionSwift.rawValue)
        Grid {
            for region in RegionSwiftList.regions {
                Section {
                    // Ignite's image variant lookup treats the deployment subpath as an asset directory.
                    Tag("img")
                        .attribute("src", region.imageFilePath)
                        .attribute("alt", "")
                        .class("card-img-top")
                    Section {
                        Link(region.name, target: region.link.absoluteString)
                            .font(.title4)
                            .class("card-link")
                    }
                    .class("card-body")
                }
                .class("card")
            }
        }
        .columns(3)
        .padding(.top, 20)
    }
}
