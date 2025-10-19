# Package.swift Update Instructions

The Package.swift file needs to be updated with the correct Swift Package Manager syntax.

## Current Issues:
1. Missing `dependencies: []` parameter
2. Incorrect `.copy()` method - should be `.process()`

## Corrected Package.swift:

```swift
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
            publicHeadersPath: "../include",
            resources: [
                .process("../default.metallib")
            ],
            cSettings: [
                .define("GGML_USE_METAL", to: "1")
            ]
        )
    ]
)
```

## Changes Made:
1. Added `dependencies: []` parameter
2. Changed `.copy("../default.metallib")` to `.process("../default.metallib")`

This will resolve the Swift Package Manager compilation errors.
