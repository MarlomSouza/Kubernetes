FROM microsoft/azure-cli

RUN az aks install-cli

WORKDIR /app

RUN apk update && apk add zip &&  \
    wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip && \
    unzip terraform_0.11.11_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm -f terra*

RUN git clone https://github.com/anubhavmishra/terraform-azurerm-aks.git  /data

WORKDIR /data

COPY cluster.sh .

RUN apk add dos2unix && dos2unix cluster.sh && chmod +x ./cluster.sh


