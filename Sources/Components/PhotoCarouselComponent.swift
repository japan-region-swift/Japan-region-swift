import Foundation
import Ignite

struct PhotoCarouselComponent: HTML {
    private let carouselID = "event-photos"
    private let imagePaths = [
        "/Japan-region-swift/images/photos/japan-region-swift.png",
        "/Japan-region-swift/images/photos/kamiyama.png",
        "/Japan-region-swift/images/photos/chiba.png",
        "/Japan-region-swift/images/photos/kanagawa.png",
        "/Japan-region-swift/images/photos/chiba2.png",
        "/Japan-region-swift/images/photos/osaka.png",
        "/Japan-region-swift/images/photos/minokamo.png",
        "/Japan-region-swift/images/photos/nagoya.png",
        "/Japan-region-swift/images/photos/hakata.png",
        "/Japan-region-swift/images/photos/tamariver.png",
        "/Japan-region-swift/images/photos/kanagawa2.png",
        "/Japan-region-swift/images/photos/okinawa1.jpeg",
        "/Japan-region-swift/images/photos/hakodate1.jpeg",
        "/Japan-region-swift/images/photos/nagoya2.png",
        "/Japan-region-swift/images/photos/sapporo1.png",
        "/Japan-region-swift/images/photos/tamariver2.png",
    ]

    var body: some HTML {
        // Render images directly because Ignite's asset lookup includes the deployment subpath.
        Section {
            Section {
                for index in imagePaths.indices {
                    Button()
                        .data("bs-target", "#\(carouselID)")
                        .data("bs-slide-to", String(index))
                        .class(index == 0 ? "active" : nil)
                        .aria(.current, index == 0 ? "true" : nil)
                        .aria(.label, "Slide \(index + 1)")
                }
            }
            .class("carousel-indicators")
            Section {
                for index in imagePaths.indices {
                    Section {
                        Tag("img")
                            .attribute("src", imagePaths[index])
                            .attribute("alt", "")
                            .class("d-block", "w-100")
                            .style(.height, "100%")
                            .style(.objectFit, "cover")
                    }
                    .class("carousel-item")
                    .class(index == 0 ? "active" : nil)
                    .style(.backgroundColor, "black")
                }
            }
            .class("carousel-inner")
            control(direction: "prev", label: "Previous")
            control(direction: "next", label: "Next")
        }
        .id(carouselID)
        .class("carousel", "slide", "carousel-fade")
        .data("bs-ride", "carousel")
        .padding(.top, 60)
    }

    private func control(direction: String, label: String) -> some InlineElement {
        Button {
            Span()
                .class("carousel-control-\(direction)-icon")
                .aria(.hidden, "true")
            Span(label)
                .class("visually-hidden")
        }
        .class("carousel-control-\(direction)")
        .data("bs-target", "#\(carouselID)")
        .data("bs-slide", direction)
    }
}
