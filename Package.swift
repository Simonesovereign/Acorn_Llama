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
            path: ".",
            exclude: ["*.zip", "*.md", "*.sh"],
            sources: ["src.zip"],
            publicHeadersPath: "include.zip",
            cSettings: [
                .define("GGML_USE_METAL", to: "1")
            ],
            cxxSettings: nil,
            swiftSettings: nil,
            linkerSettings: nil
        )
    ]
)