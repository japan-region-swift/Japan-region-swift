import Foundation
import Ignite

struct RegionSwiftComponent: HTML {
    var body: some HTML {
        Text("Community")
            .font(.title2)
            .id(NavigationOptions.regionSwift.rawValue)
        Grid {
            for region in RegionSwiftList.regions {
                Card(imageName: region.imageFilePath) {
                    Link(region.name, target: region.link.absoluteString)
                        .font(.title4)
                }
            }
        }
        .columns(3)
        .padding(.top, 20)
    }
}
