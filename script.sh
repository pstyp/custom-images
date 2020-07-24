az group create -n custom-images -l uksouth
az vm availability-set create -g custom-images -n myset -l uksouth --platform-fault-domain-count 2 --platform-update-domain-count 5
az vm create -g custom-images -n myVM -l uksouth --generate-ssh-key --availability-set myset --image UbuntuLTS --custom-data cloud-init.txt
az vm open-port --resource group custom-images --name myVM --port 5000
git push -u origin master


