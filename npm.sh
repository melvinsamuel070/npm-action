#!/bin/bash

# Update system and install dependencies
set -e

echo "Updating package list and installing required dependencies..."
apt-get update && apt-get install -y nodejs npm build-essential git

# Install frontend dependencies
echo "Installing frontend dependencies..."
cd "$1" || exit
npm install
echo "Building frontend project..."
npm run build
echo "Running frontend tests..."
npm test -- --maxWorkers=2

# Install backend dependencies
echo "Installing backend dependencies..."
cd "$2" || exit
npm install
echo "Running backend tests..."
npm test
