import Foundation
import Ignite

struct RegionSwiftComponent: Component {
    func body(context: PublishingContext) -> [any PageElement] {
        Text("Community")
            .font(.title2)
            .id(NavigationOptions.regionSwift.rawValue)
        Group {
            for region in RegionSwiftList.regions {
                    Link(target: region.link.absoluteString) {
                        Text(region.name)
                            .font(.title4)
                    }
                    Image(region.imageFilePath)
                        .resizable()
                        .aspectRatio(.r16x9, contentMode: .fit)
                        .margin(.bottom, 12)
            }
        }
        .padding(.top, 20)
    }
}
