#!/bin/bash
# Build script for documentation
echo "Building documentation..."
# Creat output directory
mkdir -p output
cp docs/*.md output/

echo "Documentation built successfully!"
ls -la output/ 
