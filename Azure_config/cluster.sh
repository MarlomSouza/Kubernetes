export client_id="hiagogouveia@somosdigix.onmicrosoft.com"
export password="****"

az login -u $client_id -p $password

export subsciptionId=$(az account show --query "{subsciptionId:id}" --output tsv)
echo "###################################"
echo $subsciptionId;

export tenantId=$(az account show --query "{subsciptionId:tenantId}" --output tsv)
echo $tenantId;

export servico=$(az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/$subsciptionId" --output tsv)
echo $servico
export array=($servico)
echo ${array[0]}

export ARM_SUBSCRIPTION_ID=${subsciptionId}
export ARM_TENANT_ID=${tenantId}
export ARM_CLIENT_ID=${array[0]}
export ARM_CLIENT_SECRET=${array[4]}
export TF_VAR_client_id=${array[0]}
export TF_VAR_client_secret=${array[4]}
echo "##########A N T E S#########################"
echo $TF_VAR_client_id
echo "###################################"

terraform init && terraform plan -out saida.out && terraform apply saida.
echo "##########D E P O I S ########################"
echo $TF_VAR_client_id
echo "###################################"
# [ -z "$ARM_SUBSCRIPTION_ID"] && echo 'need to set ARM_SUBSCRIPTION_ID'
# [ -z "$ARM_TENANT_ID"] && echo 'need to set ARM_TENANT_ID'
# [ -z "$ARM_CLIENT_ID"] && echo 'need to set ARM_CLIENT_ID'
# [ -z "$ARM_CLIENT_SECRET"] && echo 'need to set ARM_CLIENT_SECRET'
# [ -z "$TF_VAR_client_id"] && echo 'need to set TF_VAR_client_id'
# [ -z "$TF_VAR_client_secret"] && echo 'need to set TF_VAR_client_secret'


