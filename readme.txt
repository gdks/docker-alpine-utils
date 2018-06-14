# start running commands
docker-compose run utils

# get kubernetes dashboard token
kubectl -n kube-system get secret
kubectl -n kube-system describe secret deployment-controller-token-*****
