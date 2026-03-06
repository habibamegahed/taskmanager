#!/bin/bash
# generate_ssl.sh - self-signed SSL cert for Nginx

mkdir -p certs private

# Create private key
openssl genrsa -out private/server.key 2048

# Create certificate
openssl req -new -x509 -key private/server.key -out certs/server.crt -days 365 -subj "/C=US/ST=State/L=City/O=Lab/CN=localhost"

echo "Self-signed SSL certificate created in ./certs and ./private"
