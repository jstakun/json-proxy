podman run -d --name mongodb -p 27017:27017 docker.io/bitnami/mongodb:4.4
podman run -d --name mongodb-client -p 8888:8080 -e QUARKUS_MONGODB_CONNECTION_STRING=mongodb://192.168.122.195:27017  quay.io/jstakun/camel-quarkus-mongodb-client:latest
podman run -d --name quarkus -p 9090:8080 quay.io/jstakun/hello-quarkus:0.6

curl -v -H "Content-Type: application/json" -H "X-RedHat-UID: admin" -d '{"hello": "quarkus2"}' http://localhost:8080/predictions

podman stop --all
podman rm --all

-- truststore - import certs chain

keytool -importcert -keystore truststore.jks -storepass password -file elab-local.pem 
keytool -importcert -keystore truststore.jks -storepass password -file elab-local-ca.pem --alias ca
keytool -importcert -keystore truststore.jks -storepass password -file elab-local-in-ca.pem --alias in-ca
