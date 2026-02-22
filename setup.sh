#!/bin/bash
set -e

echo "================================"
echo "  SwiftPOS Quick Setup"
echo "================================"
echo ""

# Check Docker
if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed."
    echo "Please install Docker: https://docs.docker.com/get-docker/"
    exit 1
fi

if ! docker info &> /dev/null 2>&1; then
    echo "Error: Docker daemon is not running. Please start Docker."
    exit 1
fi

# Check if image exists
if ! docker image inspect swiftpos:latest &> /dev/null 2>&1; then
    echo "SwiftPOS image not found. Loading from archive..."
    if [ -f "swiftpos-latest.tar.gz" ]; then
        echo "Loading swiftpos-latest.tar.gz (this may take a minute)..."
        docker load -i swiftpos-latest.tar.gz
        # Re-tag to match docker-compose expectation
        docker tag ghcr.io/nullsam/swiftpos:latest swiftpos:latest
        echo "Image loaded successfully!"
    else
        echo "Error: swiftpos-latest.tar.gz not found in the current directory."
        echo ""
        echo "Download it from the GitHub Releases page and place it in this directory."
        exit 1
    fi
fi

echo ""
echo "Starting SwiftPOS..."
docker compose up -d

echo ""
echo "================================"
echo "  SwiftPOS is starting up!"
echo "================================"
echo ""
echo "  Open http://localhost:3000 in your browser"
echo "  (Wait ~10 seconds for the database to initialize)"
echo ""
echo "  First time? The setup wizard will guide you through:"
echo "    1. Choose your language"
echo "    2. Set up your business"
echo "    3. Create admin account"
echo "    4. Activate license or start free trial"
echo ""
echo "  To stop:  docker compose down"
echo "  To reset: docker compose down -v"
echo "================================"
