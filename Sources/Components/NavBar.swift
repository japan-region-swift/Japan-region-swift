import Foundation
import Ignite

struct NavBar: HTML {
    let model: JapanRegionSwiftModel
    let language: LanguageType

    var body: some HTML {
        NavigationBar {
            for option in NavigationOptions.allCases {
                option.link(model: model)
            }
            Link("\(language.flag) \(model.language)", target: language.targetPage)
        } logo: {
            logo
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.secondaryColor)
        .position(.fixedTop)
    }

    private var logo: some InlineElement {
        Span(model.name)
            .fontWeight(.bold)
            .margin(.none)
            .font(.title4)
            .foregroundStyle(.primaryColor)
    }
}
