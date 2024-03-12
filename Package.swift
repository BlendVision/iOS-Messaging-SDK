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
            url: "https://drive.google.com/file/d/1YpHjKF5aeuAfCt2DhAN1ew9TYyURak-h/view?usp=drive_link",
            checksum: "8cb8fe997944c73d016afb0d98e893fec90f3283853eeff39c051ccf160bda47"
        )
    ]
)
