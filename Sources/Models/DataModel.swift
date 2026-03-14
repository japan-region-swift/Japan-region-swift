import Foundation

struct JapanRegionSwiftModel: Decodable, Sendable {
    let name: String
    let language: String
    let navBar: NavBarModel
    let home: HomeModel
    let event: EventModel
}

struct NavBarModel: Decodable, Sendable {
    let organizer: String
}

struct HomeModel: Decodable, Sendable {
    let title: String
    let description: String
}

struct EventModel: Decodable, Sendable {
    let title: String
}
