#!/bin/bash


#The tls certificate must be added as a secret in the same namespace as the application. To use a letsencrypt certificate, certbot must be used like this : certbot certonly --standalone
kubectl create secret tls flask-app-tls     --namespace my-personal-website     --key /etc/letsencrypt/live/www.gautierbonnemaison.fr/privkey.pem     --cert /etc/letsencrypt/live/www.gautierbonnemaison.fr/fullchain.pem
