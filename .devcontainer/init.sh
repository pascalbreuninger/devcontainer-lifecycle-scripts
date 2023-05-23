#!/bin/bash

echo "Setting up environment..."
cd ui && yarn
cd ../server && yarn

echo "Installed dependencies, starting server in background"
yarn dev 2>&1 &

echo "Starting UI"
cd ../ui
yarn dev 2>&1 &

echo "Done"
