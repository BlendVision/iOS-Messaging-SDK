// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlendVisionMessagingSDK",
    platforms: [
            .iOS(.v14)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BlendVisionMessagingSDK",
            targets: ["BlendVisionMessagingSDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "BlendVisionMessagingSDK",
            url: "https://github.com/bing-kuo/MessagingSDKDemo/releases/download/0.0.1/BVMessagingSDK.xcframework.zip",
            checksum: "8cb8fe997944c73d016afb0d98e893fec90f3283853eeff39c051ccf160bda47"
        ),
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
        )
    ]
)
