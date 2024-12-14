#!/bin/bash

# Define sections limits
symbol="─"
times=50
section_limit=""
for ((i=0; i<times; i++)); do
    section_limit+="$symbol"
done
section_limit="$(white_bold "$section_limit")"

section() {
    echo "$section_limit"
}

# Info
info() {
    echo "$(cyan_bold "$1")"
}

# Header
header() {
    echo "$(white_bold "$1")"
}

# Success
success() {
    echo "$(green_bold "✅ [Success] - $1")"
}

# Warning
warning() {
    echo "$(yellow_bold "⚠️ [Warning] - $1")"
}


# Error
error() {
    echo "$(red_bold "❌ [Error] - $1")"
}