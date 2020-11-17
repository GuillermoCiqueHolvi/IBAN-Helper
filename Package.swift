// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RFIBANHelper",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_12)
    ],
    products: [
        .library(name: "RFIBANHelper", targets: ["RFIBANHelper"])
    ],
    targets: [
        .target(
            name: "RFIBANHelper",
            path: "Sources",
            resources: [.process("Resources")]
        ),
        .testTarget(name: "RFIBANHelperTests", dependencies: ["RFIBANHelper"], path: "Tests")
    ],
    swiftLanguageVersions: [.v5]
)
