# Docker

# Getting base image
system("docker pull rstudio/plumber")

# Building the docker image
system("docker build -t fizzbuzz:1.0 .")

# See if the image is there
system("docker images")

# Running an image
system("docker run -p 8000:8000 --name myapp -d fizzbuzz:1.0")

# See containers running
system("docker ps")

# Lets check if it works
system("curl -X GET localhost:8000?number=15")
system("curl -X GET localhost:8000?number=6")

# Stop the image
system("docker stop myapp")
system("docker ps -a")

# Delete container image
system("docker rm myapp")

## Kubernetes

# Deploying a 2 pod application
system("kubectl apply -f myapp.yaml")

# Check deployments
system("kubectl get deployments")

# Check pods
system("kubectl get pods")

# Deploy the service
system("kubectl apply -f myservice.yaml")

# Check service
system("kubectl get service")

# And we do forward the 8000 port
system("kubectl port-forward service/my-service 8000:8000")

# Go to you browser and try on localhost:8000?number=6

# Clean up the service
system("kubectl delete -f myservice.yaml")
system("kubectl delete -f myapp.yaml")