import Foundation
import Ignite

struct EventsComponent: HTML {
    let eventModel: EventModel

    var body: some HTML {
        Text(eventModel.title)
            .font(.title2)
            .id(NavigationOptions.event.rawValue)
            .padding(.top, 20)
        List {
            for event in EventList.events {
                Link(event.name, target: event.link.absoluteString)
            }
        }
        .listMarkerStyle(.ordered(.automatic))
    }
}
