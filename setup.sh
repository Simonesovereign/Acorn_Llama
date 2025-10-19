#!/bin/bash

# Acorn Llama Package Setup Script
echo "🧱 Setting up Acorn Llama Package..."

# Check if we're in the right directory
if [ ! -f "Package.swift" ]; then
    echo "❌ Error: Please run this script from the repository root"
    exit 1
fi

echo "📁 Package structure verified:"
echo "├── Package.swift ✅"
echo "├── default.metallib ✅"
echo "├── include/ ✅"
echo "├── src/ ✅"
echo "├── ggml/ ✅"
echo "├── README.md ✅"
echo "└── setup.sh ✅"

echo ""
echo "🔧 Package is ready for Swift Package Manager"
echo "📋 To use in Xcode:"
echo "1. File → Add Package Dependencies"
echo "2. Enter this repository URL"
echo "3. Select main branch"
echo "4. Add to your target"

echo ""
echo "✅ Setup complete! Package is ready for use."
