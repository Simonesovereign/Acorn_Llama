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
            exclude: [
                "*.md",
                "*.sh", 
                "GITHUB_UPLOAD_INSTRUCTIONS.md",
                "README_STRUCTURE_FIX.md", 
                "update_instructions.md",
                "fix-structure.sh",
                "split-directories.sh",
                "update-package.sh"
            ],
            sources: nil,
            publicHeadersPath: "include/include_a",
            cSettings: [
                .define("GGML_USE_METAL", to: "1")
            ],
            cxxSettings: nil,
            swiftSettings: nil,
            linkerSettings: nil
        )
    ]
)