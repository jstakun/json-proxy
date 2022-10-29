podman login quay.io
podman build -f Containerfile.distroless . -t quay.io/jstakun/json-proxy:latest
podman push quay.io/jstakun/json-proxy:latest
