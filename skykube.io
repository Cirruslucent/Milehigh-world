apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: example-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  - host: "yourdomain.com"
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: your-service-name
            port:
              number: 80
---
apiVersion: v1
kind: Service
metadata:
  name: your-service-name
spec:
  type: ClusterIP
  ports:
  - port: 80
    targetPort: 8080
    protocol: TCP
    name: http
  selector:
    app: your-app
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: your-app
spec:
  replicas: 2
  selector:
    matchLabels:
      app: your-app
  template:
    metadata:
      labels:
        app: your-app
    spec:
      containers:
      - name: your-container
        image: your-image
        ports:
        - containerPort: 8080