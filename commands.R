# Docker

# Building the docker image
system("docker build -t fizzbuzz .")

# See if the image is there
system("docker images")

# Running an image
system("docker run -p 8000:8000 --name myapp -d fizzbuzz")

# See containers running
system("docker ps")

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

# And we do forward the 8000 port
system("kubectl port-forward service/my-service 8000:8000")

# Lets check if it works
system("curl -X GET localhost:8000?number=15")