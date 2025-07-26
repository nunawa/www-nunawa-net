import Foundation
import Ignite

struct Home: StaticPage {
    var title = "www.nunawa.net"
    var description = "nunawaの個人サイトです。ソフトウェアエンジニアとしての活動や、個人開発したプロジェクトを紹介しています。"

    var body: some HTML {
        NavigationBar(logo: "www.nunawa.net") {
            Link("Profile", target: "#profile")
            Link("Projects", target: "#projects")
            Link("Contact", target: "#contact")
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .position(.fixedTop)
        .background(.black)

        Text("Profile")
            .font(.title3)
            .id("profile")
            .padding(.top, 90)
        Grid(spacing: .large) {
            Section {
                Image("/images/icon.webp", description: "nunawa's icon")
                    .resizable()
                    .frame(width: 200, minWidth: 200, height: 200)
                    .cornerRadius(100)
            }
            .horizontalAlignment(.center)

            Section {
                Text("nunawa")
                    .font(.title4)
                Text("Software Engineer")
                    .font(.title6)
                Text(
                    """
                        ソフトウェアエンジニアとして活動しています。iOSアプリ開発やRuby on Railsを使ったWeb開発の経験があり、実務では2年のキャリアを積んでいます。
                        業務外でも個人開発を継続的に行っており、最新技術のキャッチアップを楽しんでいます。
                        このサイトでは私が作成したプロジェクトを紹介しています。
                        何か質問やコラボレーションのお誘いなどがありましたら、お気軽にご連絡ください。
                    """)
            }
            .frame(minWidth: 300)
        }

        Text("Projects")
            .font(.title3)
            .id("projects")
            .padding(.top, 60)
        Grid {
            Card(imageName: "/images/condler.webp") {
                Text("Amazonで商品を探しやすくするブラウザ拡張機能。2000人以上のユーザーに利用されています。")
            } header: {
                Text {
                    Link(
                        "Condler",
                        target:
                            "https://chromewebstore.google.com/detail/condler/ejjdbndmmongojeafjlilnchmkppbeap"
                    )
                    .target(.blank)
                }
                .font(.title4)
            }
            Card(imageName: "/images/jisaku-nunawa-net.webp") {
                Text("最新のPCパーツ情報で自作PC構成をシミュレーション＆見積もり。価格比較も可能な、自作PCユーザーのための支援サイト。")
            } header: {
                Text {
                    Link("jisaku.nunawa.net", target: "https://jisaku.nunawa.net/")
                        .target(.blank)
                }
                .font(.title4)
            }
            Card(imageName: "/images/docker-dtv-server.webp") {
                Text("PC用TVチューナー向けのTV視聴・録画環境。Dockerを使って簡単に構築が可能です。")
            } header: {
                Text {
                    Link("docker-dtv-server", target: "https://github.com/nunawa/docker-dtv-server")
                        .target(.blank)
                }
                .font(.title4)
            }
            Card(imageName: "/images/weather-nunawa-net.webp") {
                Text("日本全国の暑さ指数データを可視化。地図やグラフで各地点の統計が閲覧できるWebサイト。")
            } header: {
                Text {
                    Link("weather.nunawa.net", target: "https://weather.nunawa.net/")
                        .target(.blank)
                }
                .font(.title4)
            }
        }
        .columns(2)

        Text("Contact")
            .font(.title3)
            .id("contact")
            .padding(.top, 60)
        HStack {
            Link(target: "https://github.com/nunawa") {
                Image(systemName: "github", description: "GitHub")
            }
            .target(.blank)
            .font(.title4)
            Link(target: "https://x.com/nunawa7") {
                Image(systemName: "twitter-x", description: "X (Twitter)")
            }
            .target(.blank)
            .font(.title4)
            Link(target: "mailto:nunawa7@icloud.com") {
                Image(systemName: "envelope", description: "Email")
            }
            .target(.blank)
            .font(.title4)
            Link(target: "https://buymeacoffee.com/nunawa") {
                Image(systemName: "cup-hot", description: "Buy Me a Coffee")
            }
            .target(.blank)
            .font(.title4)
        }
        .margin(.top)
    }
}
