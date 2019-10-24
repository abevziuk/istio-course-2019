export VERSION=2.0

docker build -t abevziuk/books-service:${VERSION} -f books/Dockerfile books
docker push abevziuk/books-service:${VERSION}

docker build -t abevziuk/authors-service:${VERSION} -f authors/Dockerfile authors
docker push abevziuk/authors-service:${VERSION}

kubectl delete deployments authors-v2
kubectl delete deployments books-v2

kubectl apply -f deploy-authors-v2.yaml
kubectl apply -f deploy-books-v2.yaml
