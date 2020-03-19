// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "XcodeProj",
    products: [
        .library(name: "XcodeProj", targets: ["XcodeProj"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tuist/XcodeProjCExt", .branch("master")),
        .package(url: "https://github.com/tadija/AEXML", .upToNextMinor(from: "4.4.0")),
        .package(url: "https://github.com/michaeleisel/PathKit", .branch("me-temp-fast")),
    ],
    targets: [
        .target(name: "XcodeProj",
                dependencies: [
                    "XcodeProjCExt",
                    "PathKit",
                    "AEXML",
                ]),
        .testTarget(name: "XcodeProjTests", dependencies: ["XcodeProj"]),
    ]
)
