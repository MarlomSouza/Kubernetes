# Buildar a image
docker build --rm  -t marlom1012/kubernetes:latest .
# Rodar a imagem
docker run -p <porta desejada>:80 marlom1012/kubernetes

# Site verificar se está funcionando
https://localhost:<porta escolhida>/api/values