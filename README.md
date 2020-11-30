# explorekit

My personal docker image to explore networks, containers, etc.

## Usage

With Docker

```
docker run --rm -it lambdalisue/explorekit
```

With Kubernetes

```
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: explorekit
spec:
  replicas: 1
  selector:
    matchLabels:
      app: explorekit
  template:
    metadata:
      labels:
        app: explorekit
    spec:
      containers:
        - name: explorekit
          image: lambdalisue/explorekit
          command: ["sleep", "infinity"]
```
