#!/bin/bash
kubectl create deployment app --image=aparnagk76/app
kubectl scale deployment app --replicas=3
kubectl expose deployment app --port=5000