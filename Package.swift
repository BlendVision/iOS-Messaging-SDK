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
        .target(
            name: "BlendVisionMessagingSDK"
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
        ),
        .binaryTarget(
            name: "BVMessagingSDK",
            path: "Sources/Frameworks/BVMessagingSDK.xcframework"
        ),
        .testTarget(
            name: "BlendVisionMessagingSDKTests",
            dependencies: ["BlendVisionMessagingSDK"]),
    ]
)
