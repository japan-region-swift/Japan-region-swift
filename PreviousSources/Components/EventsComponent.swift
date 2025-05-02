import Foundation
import Ignite

struct EventsComponent: Component {
    let eventModel: EventModel

    func body(context: PublishingContext) -> [any PageElement] {
        Text(eventModel.title)
            .font(.title2)
            .id(NavigationOptions.event.rawValue)
            .padding(.top, 20)
        List {
            Group {
                for event in EventList.events {
                    Link(target: event.link.absoluteString) {
                        Text(event.name)
                            .font(.title4)
                    }
                }
            }
        }
        .listStyle(.ordered(.default))
    }
}
