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

# install prometheus
```
helm install stable/prometheus-operator --generate-name

NAME: prometheus-operator-1601581931
LAST DEPLOYED: Thu Oct  1 12:52:33 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
```

# verification
```
$ kubectl get deploy
NAME                                                READY   UP-TO-DATE   AVAILABLE   AGE
app                                                 3/3     3            3           47m
prometheus-operator-160158-operator                 1/1     1            1           4m16s
prometheus-operator-1601581931-grafana              1/1     1            1           4m16s
prometheus-operator-1601581931-kube-state-metrics   1/1     1            1           4m16s
```

```
$kubectl port-forward svc/prometheus-operator-160158-prometheus 9090:9090
Forwarding from 127.0.0.1:9090 -> 9090
Forwarding from [::1]:9090 -> 9090
Handling connection for 9090
Handling connection for 9090
Handling connection for 9090
Handling connection for 9090
Handling connection for 9090
Handling connection for 9090
```
open http://localhost:9090/graph
