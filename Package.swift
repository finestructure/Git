// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Git",
    platforms: [.macOS(.v13)],
    products: [
        .library(name: "Git", targets: ["Git"]),
    ],
    dependencies: [
        .package(url: "https://github.com/bdewey/static-libgit2.git", from: "0.5.0"),
    ],
    targets: [
        .target(name: "Git", dependencies: [
            .product(name: "static-libgit2", package: "static-libgit2")
        ]),
        .testTarget(
            name: "GitTests",
            dependencies: ["Git"]),
    ]
)
