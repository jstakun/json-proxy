VERSION=latest
AUTHFILE=~/jsonproxy.auth
#podman login quay.io
podman build --squash -f Containerfile.quarkus . -t quay.io/jstakun/json-proxy:$VERSION
podman push --authfile $AUTHFILE quay.io/jstakun/json-proxy:$VERSION
