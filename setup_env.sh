#!/bin/bash
# Setup script for Rails project environment
# This ensures rbenv takes priority over mise and sets up library paths

# Remove mise from PATH temporarily and prioritize rbenv
export PATH="/home/alemao/.rbenv/shims:/home/alemao/.rbenv/bin:$(echo $PATH | tr ':' '\n' | grep -v mise | tr '\n' ':')"
export LD_LIBRARY_PATH="/home/alemao/.rbenv/versions/3.2.2/lib:$LD_LIBRARY_PATH"

echo "Environment setup complete!"
echo "Ruby version: $(ruby --version)"
echo "Gem location: $(which gem)"
echo "Bundle location: $(which bundle)"
