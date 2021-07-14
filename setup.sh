# faz o login no azure
az login

region=brazilsouth
rsgroup=FROM-AZURE-CLI-6

# cria o grupo de recurso
az group create -l $region -n $rsgroup

storageName=storage62456

# cria a conta de armazenamento
az storage account create \
  --name $storageName \
  --location $region \
  --resource-group $rsgroup \
  --sku Standard_LRS

# cria o aplicativo de funcao
az functionapp create \
  --name fnc-teste-jean \
  --storage-account $storageName \
  --consumption-plan-location $region \
  --resource-group $rsgroup \
  --runtime node \
  --disable-app-insights \
  --functions-version 3
