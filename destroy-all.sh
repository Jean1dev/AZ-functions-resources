resources="cloud-shell-storage-eastus
  DefaultResourceGroup-CUS
  FROM-AZURE-CLI
  FROM-AZURE-CLI-2
  FROM-AZURE-CLI-3
  FROM-AZURE-CLI-4
  FROM-AZURE-CLI-6
"

for resource in $resources
do
  echo $resource
  az group delete -n $resource --no-wait --yes
done
