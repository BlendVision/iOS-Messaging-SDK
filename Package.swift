// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BVMessagingSDK",
    platforms: [
            .iOS(.v14)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BVMessagingSDK",
            targets: ["BVMessagingSDK", "Alamofire", "CocoaMQTT", "Starscream"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "Alamofire",
            path: "Sources/Frameworks/Alamofire.xcframework"
        ),
        .binaryTarget(
            name: "CocoaMQTT",
            path: "Sources/Frameworks/CocoaMQTT.xcframework"
        ),
        .binaryTarget(
            name: "MqttCocoaAsyncSocket",
            path: "Sources/Frameworks/MqttCocoaAsyncSocket.xcframework"
        ),
        .binaryTarget(
            name: "Starscream",
            path: "Sources/Frameworks/Starscream.xcframework"
        ),
        .binaryTarget(
            name: "BVMessagingSDK",
            url: "https://github.com/bing-kuo/MessagingSDKDemo/releases/download/0.0.1/BVMessagingSDK.xcframework.zip",
            checksum: "a8aba4cb6210a629384276296e70919d51710fc44d160bd263bde6fa4ad2a6e2"
        )
    ]
)
