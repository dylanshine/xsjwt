// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "xsjwt",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "XSJWT",
            targets: ["XSJWT"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/jwt.git", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "XSJWT",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "JWT", package: "jwt"),
            ])
    ]
)
