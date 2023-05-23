#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=honghot/housing-price:latest

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run housing-price-k8s --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
minikube kubectl -- get pods

# Step 4:
# Forward the container port to a host
minikube kubectl -- port-forward housing-price-k8s 8000:80

