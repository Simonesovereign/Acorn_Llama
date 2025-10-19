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
            dependencies: [],
            path: "src",
            exclude: [],
            sources: nil,
            publicHeadersPath: "../include",
            cSettings: [
                .define("GGML_USE_METAL", to: "1")
            ],
            cxxSettings: nil,
            swiftSettings: nil,
            linkerSettings: nil
        )
    ]
)