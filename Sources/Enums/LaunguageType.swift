import Foundation
import Ignite

@MainActor
enum LanguageType: String {
    case english = "English"
    case japanese = "Japanese"

    var flag: String {
        switch self {
            case .english: "🇯🇵"
            case .japanese: "🇺🇸"
        }
    }

    var targetPage: any StaticPage {
        switch self {
            case .english: Jp()
            case .japanese: En()
        }
    }
}
