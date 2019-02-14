# Buildar a image
    docker build --rm  -t marlom1012/kubernetes:latest .

# Rodar a imagem
    docker run --rm --name app -p <porta desejada>:80 marlom1012/kubernetes

# Site verificar se está funcionando
    https://localhost:<porta escolhida>/api/values

# Mandar imagem para o docker hub
    docker push  marlom1012/kubernetes:1.0

# Rodar a imagem pelo Compose
    docker-compose up -d