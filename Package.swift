// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "AcornLlama",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "AcornLlama", targets: ["AcornLlama"])
    ],
    targets: [
        .target(
            name: "AcornLlama",
            path: "src",
            publicHeadersPath: "../include",
            resources: [
                .copy("../default.metallib")
            ],
            cSettings: [
                .define("GGML_USE_METAL", to: "1")
            ]
        )
    ]
)
