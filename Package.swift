// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftSvgaPlayer",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftSvgaPlayer",
            targets: ["SwiftSvgaPlayer"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", exact: "2.4.2"),
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftSvgaPlayer",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "ZipArchive", package: "ZipArchive"),
            ]),
        .testTarget(
            name: "SwiftSvgaPlayerTests",
            dependencies: [
                "SwiftSvgaPlayer",
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "ZipArchive", package: "ZipArchive"),
            ]),
    ]
)
