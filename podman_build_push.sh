VERSION=latest
AUTHFILE=~/jsonproxy.auth
#podman login quay.io
podman build --squash -f Containerfile.distroless . -t quay.io/jstakun/json-proxy:$VERSION
podman push --authfile $AUTHFILE quay.io/jstakun/json-proxy:$VERSION
