// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "arc52-swift-example",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "arc52-swift-example",
            targets: ["arc52-swift-example"]),
     ],
    dependencies: [
        .package(url: "https://github.com/algorandfoundation/xHD-Wallet-API-swift", exact: "0.2.0-alpha"),
        .package(url: "https://github.com/Electric-Coin-Company/MnemonicSwift.git", from: "2.2.4"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "arc52-swift-example",
            dependencies: [
                .product(name: "x-hd-wallet-api", package: "xHD-Wallet-API-swift"),
                .product(name: "MnemonicSwift", package: "MnemonicSwift")]),
        .testTarget(
            name: "arc52-swift-exampleTests",
            dependencies: ["arc52-swift-example"]),
            ]
)