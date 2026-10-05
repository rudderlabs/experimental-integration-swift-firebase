// swift-tools-version: 5.9
import PackageDescription
let package = Package(
    name: "DemoFirebase",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [.library(name: "DemoFirebase", targets: ["DemoFirebase"])],
    dependencies: [.package(url: "https://github.com/rudderlabs/experimental-rudder-sdk-swift.git", from: "0.1.0"), .package(url: "https://github.com/apple/swift-collections.git", exact: "1.1.4")],
    targets: [.target(name: "DemoFirebase", dependencies: [.product(name: "DemoSDK", package: "experimental-rudder-sdk-swift"), .product(name: "OrderedCollections", package: "swift-collections")])]
)
