// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Rudder",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "Rudder",
            type: .dynamic,
            targets: ["Rudder-Swift"]
        )
    ],
    targets: [
        .target(
            name: "Rudder",
            path: "Sources",
            publicHeadersPath: "Rudder/**",
            cSettings: [
                .headerSearchPath("Rudder/**")
            ]
        ),
        .target(
            name: "Rudder-Swift",
            dependencies: ["Rudder"],
            path: "SwiftSources"
        )
    ]
)
