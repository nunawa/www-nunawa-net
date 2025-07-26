import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {
    var name = "www.nunawa.net"
    var language: Language = .japanese
    var url = URL(static: "https://www.nunawa.net")
    var builtInIconsEnabled = true
    var favicon = URL(string: "/images/favicon.png")

    var author = "nunawa"

    var homePage = Home()
    var layout = MainLayout()
}
