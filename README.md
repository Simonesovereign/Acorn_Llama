# Acorn Llama Package

Custom llama.cpp Swift Package with Qwen3 architecture support for Acorn.

## Features

- ✅ Full Qwen3 architecture support
- ✅ Metal backend optimization for macOS
- ✅ Swift Package Manager compatibility

## Installation

Add this package to your Xcode project:

1. File → Add Package Dependencies
2. Enter: `https://github.com/Simonesovereign/Acorn_Llama`
3. Select main branch
4. Add to your target

## Usage

```swift
import AcornLlama

// Your Qwen3 models will now load successfully
let context = try await LlamaContext.create_context(path: modelPath)
```

## Architecture Support

This package supports:
- `qwen` (Qwen1)
- `qwen2` 
- `qwen2moe`
- `qwen3` ← **Custom support for Acorn**

## License

Based on llama.cpp with custom Qwen3 modifications for Acorn.
