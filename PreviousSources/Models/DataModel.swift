import Foundation

struct JapanRegionSwiftModel: Decodable {
    let name: String
    let language: String
    let navBar: NavBarModel
    let home: HomeModel
    let event: EventModel
}

struct NavBarModel: Decodable {
    let organizer: String
}

struct HomeModel: Decodable {
    let title: String
    let description: String
}

struct EventModel: Decodable {
    let title: String
}