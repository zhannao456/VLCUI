// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VLCUI",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "VLCUI",
            targets: ["VLCUI"]
        ),
        .library(name: "MobileVLCKit", targets: ["MobileVLCKit"]),

    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "VLCUI",
            dependencies: [
                .target(name: "MobileVLCKit", condition: .when(platforms: [.iOS])),
            ]
        ),
        .binaryTarget(
            name: "MobileVLCKit",
            path: "Sources/MobileVLCKit.xcframework"
        ),
    ]
)
