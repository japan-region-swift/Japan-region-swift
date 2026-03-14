import Foundation
import Ignite

struct BlogsComponent: HTML {
    let navbar: NavBarModel

    var body: some HTML {
        Text("Blogs")
            .font(.title2)
            .id(NavigationOptions.blog.rawValue)
        List {
            for post in BlogPostList.posts {
                Link(post.displayName, target: post.link.absoluteString)
            }
        }
        .listMarkerStyle(.ordered(.automatic))
    }
}
