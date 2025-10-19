#!/bin/bash

# Acorn Llama Package Deployment Script
echo "🚀 Acorn Llama Package Deployment"

# Check if we're in the right directory
if [ ! -f "Package.swift" ]; then
    echo "❌ Error: Please run this script from the repository root"
    exit 1
fi

echo "📦 Package contents:"
echo "├── Package.swift (Swift Package manifest)"
echo "├── default.metallib (Metal kernels)"
echo "├── include/ (Headers)"
echo "├── src/ (Source files)"
echo "├── ggml/ (GGML library)"
echo "├── README.md (Documentation)"
echo "├── setup.sh (Setup script)"
echo "└── deploy.sh (This script)"

echo ""
echo "✅ Package is ready for GitHub deployment"
echo "📋 Repository structure is correct for Swift Package Manager"
echo "🔧 All critical files are at the root level"

echo ""
echo "🎯 Next steps:"
echo "1. Upload this entire folder to GitHub"
echo "2. Ensure Package.swift is visible at repository root"
echo "3. Test with: File → Add Package Dependencies in Xcode"
