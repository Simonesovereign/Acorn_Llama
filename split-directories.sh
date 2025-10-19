#!/bin/bash

echo "🔧 Splitting directories for GitHub upload (≤10 files per subfolder)..."

# Function to split a directory into smaller subfolders
split_directory() {
    local dir=$1
    local prefix=$2
    local files_per_folder=8
    
    echo "📦 Splitting $dir/ into smaller subfolders..."
    
    # Create subfolders
    mkdir -p "${dir}/${prefix}_a" "${dir}/${prefix}_b" "${dir}/${prefix}_c"
    
    # Get list of files (excluding directories)
    local files=($(find "$dir" -maxdepth 1 -type f | sort))
    local count=0
    local current_folder="${prefix}_a"
    
    for file in "${files[@]}"; do
        if [ $count -ge $files_per_folder ]; then
            if [ "$current_folder" = "${prefix}_a" ]; then
                current_folder="${prefix}_b"
            elif [ "$current_folder" = "${prefix}_b" ]; then
                current_folder="${prefix}_c"
            fi
            count=0
        fi
        
        local filename=$(basename "$file")
        mv "$file" "${dir}/${current_folder}/"
        ((count++))
    done
    
    echo "✅ $dir/ split into ${prefix}_a/, ${prefix}_b/, ${prefix}_c/"
}

# Split src directory
split_directory "src" "src"

# Split include directory  
split_directory "include" "include"

# Split ggml directory
split_directory "ggml" "ggml"

echo "🎯 All directories split successfully!"
echo "📁 Final structure:"
echo "src/ → src_a/, src_b/, src_c/"
echo "include/ → include_a/, include_b/"  
echo "ggml/ → ggml_a/, ggml_b/, ggml_c/"
