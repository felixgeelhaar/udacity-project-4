#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=felixgeelhaar/udacity-project-4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image "$dockerpath":1.0.0 --port 80 --replicas=2 udacity-project-4 

# Step 3:
# List kubernetes pods
kubectl get po

# Step 4:
# Forward the container port to a host

kubectl port-forward --address 0.0.0.0 deployments/udacity-project-4 8000:80