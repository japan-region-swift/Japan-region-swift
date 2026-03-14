import Foundation
import Ignite

struct Base: HTML {
    @Environment(\.decode) var decode
    let language: LanguageType

    var body: some HTML {
        let model = decode("\(language.rawValue).json", as: JapanRegionSwiftModel.self)
        Group {
            if let model {
                NavBar(model: model, language: language)
                PhotoCarouselComponent()
                Group {
                    Spacer(size: 32)
                    Text(model.home.title)
                        .font(.title2)
                    Divider()
                    Text(model.home.description)
                        .font(.title4)
                    Divider()
                    EventsComponent(eventModel: model.event)
                    Divider()
                    BlogsComponent(navbar: model.navBar)
                    Divider()
                    RegionSwiftComponent()
                }
                .padding(.medium)
            }
        }
    }
}
