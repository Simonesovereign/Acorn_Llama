#!/bin/bash

echo "🔧 Fixing GitHub repository structure for Swift Package Manager..."

# Create a proper directory structure
mkdir -p src include ggml

# Extract zip files to create proper directories
echo "📦 Extracting zip files..."

# Note: This script would need to be run on the GitHub repository
# to extract the zip files and create the proper directory structure

cat > README_STRUCTURE_FIX.md << 'EOF'
# Fix Repository Structure for Swift Package Manager

The current repository has files zipped up, but Swift Package Manager needs actual directories.

## Required Actions:

1. **Extract src.zip** to create a `src/` directory
2. **Extract include.zip** to create an `include/` directory  
3. **Extract ggml.zip** to create a `ggml/` directory
4. **Keep default.metallib** at the root
5. **Update Package.swift** to use the extracted directories

## Final Structure Should Be:
```
Acorn_Llama/
├── Package.swift
├── README.md
├── default.metallib
├── src/
│   ├── llama.cpp
│   ├── llama.h
│   └── ... (all source files)
├── include/
│   ├── AcornLlama.h
│   └── llama.h
└── ggml/
    ├── src/
    └── include/
```

## Package.swift for Extracted Structure:
```swift
// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "AcornLlama",
    platforms: [.macOS(.v13)],
    products: [.library(name: "AcornLlama", targets: ["AcornLlama"])],
    targets: [
        .target(
            name: "AcornLlama",
            dependencies: [],
            path: "src",
            publicHeadersPath: "../include",
            cSettings: [.define("GGML_USE_METAL", to: "1")]
        )
    ]
)
```
EOF

echo "✅ Structure fix instructions created"
echo "📋 Please extract the zip files in your GitHub repository to create proper directories"
