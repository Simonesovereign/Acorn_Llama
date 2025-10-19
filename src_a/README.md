# Source Files

This directory should contain your modified llama.cpp source files with Qwen3 support:

## Required Files:
- `llama.cpp` - Main llama implementation with Qwen3 support
- `llama.h` - Header file with Qwen3 architecture definitions
- All other .cpp and .c files from your working build

## Qwen3 Support

Your modified llama.cpp should include:
- `LLM_ARCH_QWEN3` architecture definition
- `build_qwen3()` function implementation
- Qwen3-specific model loading logic

## Build Instructions

1. Copy your working llama.cpp build files here
2. Ensure all Qwen3 modifications are included
3. Test with your ACORN_SMALL_Q6_K.gguf model
