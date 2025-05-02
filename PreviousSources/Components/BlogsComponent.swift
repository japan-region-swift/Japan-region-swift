import Foundation
import Ignite

struct BlogsComponent: Component {
    let navbar: NavBarModel

    func body(context: PublishingContext) -> [any PageElement] {
        Text("Blogs")
            .font(.title2)
            .id(NavigationOptions.blog.rawValue)
        List {
            Group {
                for post in BlogPostList.posts {
                    Link(target: post.link.absoluteString) {
                        Text(post.displayName)
                            .font(.title4)
                    }
                }
            }
        }
        .listStyle(.ordered(.default))
    }
}
