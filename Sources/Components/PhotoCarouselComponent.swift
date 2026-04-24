import Foundation
import Ignite

struct PhotoCarouselComponent: HTML {
    var body: some HTML {
        Carousel {
            slide(imagePath: "/Japan-region-swift/images/photos/japan-region-swift.png")
            slide(imagePath: "/Japan-region-swift/images/photos/kamiyama.png")
            slide(imagePath: "/Japan-region-swift/images/photos/chiba.png")
            slide(imagePath: "/Japan-region-swift/images/photos/kanagawa.png")
            slide(imagePath: "/Japan-region-swift/images/photos/chiba2.png")
            slide(imagePath: "/Japan-region-swift/images/photos/osaka.png")
            slide(imagePath: "/Japan-region-swift/images/photos/minokamo.png")
            slide(imagePath: "/Japan-region-swift/images/photos/nagoya.png")
            slide(imagePath: "/Japan-region-swift/images/photos/hakata.png")
            slide(imagePath: "/Japan-region-swift/images/photos/tamariver.png")
            slide(imagePath: "/Japan-region-swift/images/photos/kanagawa2.png")
            slide(imagePath: "/Japan-region-swift/images/photos/okinawa1.jpeg")
            slide(imagePath: "/Japan-region-swift/images/photos/hakodate1.jpeg")
        }
        .carouselStyle(.crossfade)
        .padding(.top, 60)
    }

    private func slide(imagePath: String) -> Slide {
        Slide(background: imagePath)
    }
}
