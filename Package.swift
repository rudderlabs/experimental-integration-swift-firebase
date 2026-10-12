// swift-tools-version: 5.9
import PackageDescription
let package = Package(
    name: "RudderIntegrationFirebase",
    platforms: [.iOS(.v15), .macOS(.v12), .tvOS(.v15)],
    products: [.library(name: "RudderIntegrationFirebase", targets: ["RudderIntegrationFirebase"])],
    dependencies: [.package(url: "https://github.com/rudderlabs/experimental-rudder-sdk-swift.git", from: "1.0.0"), .package(url: "https://github.com/firebase/firebase-ios-sdk", .upToNextMajor(from: "12.5.0"))],
    targets: [.target(name: "RudderIntegrationFirebase", dependencies: [.product(name: "RudderStackAnalytics", package: "experimental-rudder-sdk-swift"), .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"), .product(name: "FirebaseCore", package: "firebase-ios-sdk")])]
)
