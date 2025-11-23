openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout tls.key -out tls.crt \
  -subj "/CN=nginx.local"

kubectl create secret tls nginx-tls \
  --key tls.key \
  --cert tls.crt

kubectl apply -f nginx.yaml