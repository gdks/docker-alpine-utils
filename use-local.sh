#!/usr/bin/env sh

rm -rf /root/.kube/
cp -rf /home/Development/utils/local.kube/ /root/.kube/
sed -i 's/server:\ https:\/\/localhost:6445/server:\ https:\/\/host.docker.internal:6445/g' /root/.kube/config

kubectl config set-context $(kubectl config current-context) --namespace=
kubectl config view | grep namespace:
