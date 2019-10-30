export VERSION=2.0

# Books
docker build -t abevziuk/books-service:${VERSION} -f books/Dockerfile books
docker push abevziuk/books-service:${VERSION}
kubectl delete deployments books-v2
kubectl apply -f 2_b_deploy-books-v2.yaml

# Authors
docker build -t abevziuk/authors-service:${VERSION} -f authors/Dockerfile authors
docker push abevziuk/authors-service:${VERSION}
kubectl delete deployments authors-v2
kubectl apply -f 2_b_deploy-authors-v2.yaml

#Frontend
docker build -t abevziuk/frontend-service:${VERSION} -f frontend/Dockerfile frontend
docker push abevziuk/frontend-service:${VERSION}
kubectl delete deployments frontend-v2
kubectl apply -f 3_с_deploy-frontend-v2.yaml