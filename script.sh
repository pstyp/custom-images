az group create -n custom-images -l uksouth
az vm availability-set create -g flask-app -l uksouth --platform-fault-domain-count 2 --platform-update-domain-count 5
az vm create -g custom-images -n myVM -l uksouth --generate-ssh-key --image appImage
ssh myVM -y
git init
git remote add origin https://github.com/pstyp/custom-images.git
git push -u origin master

