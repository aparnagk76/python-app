# app

# Docker build
```
./build.sh
```

# docker run
```
docker run -it -p 8080:5000 aparnagk76/app
```

# Test
```
curl localhost:8080
<h1>Distant Reading Archive</h1><p>This site is a prototype API for distant reading of science fiction novels.</p>
```

# kuberentes deployment
```
kubectl create deployment app --image=aparnagk76/app
```

# scale deployment
```
kubectl scale deployment app --replicas=3
```

# expose service
```
kubectl expose deployment app --port=5000
```

# access locally
```
kubectl port-forward svc/app 8080:5000
```

# Test
```
curl localhost:8080
<h1>Distant Reading Archive</h1><p>This site is a prototype API for distant reading of science fiction novels.</p>
```