minikube delete

minikube start --vm-driver=virtualbox

eval $(minikube docker-env)

minikube addons enable dashboard
minikube addons enable metrics-server
minikube addons enable metallb

kubectl apply -f srcs/metallb.yaml

docker build -t nginx srcs/nginx
docker build -t wordpress srcs/wordpress
docker build -t phpmyadmin srcs/phpmyadmin
docker build -t mysql srcs/mysql

kubectl apply -f srcs/nginx.yaml
kubectl apply -f srcs/wordpress.yaml
kubectl apply -f srcs/phpmyadmin.yaml
kubectl apply -f srcs/mysql.yaml

minikube dashboard
