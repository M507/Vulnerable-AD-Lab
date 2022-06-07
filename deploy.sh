echo "Installing prerequisites"
sudo apt-get -y update
sudo apt-get -y install packer

echo "Setting up folder variables"
DC_FOLDER="windows19/"
CLIENT_10="windows10/"
mkdir -p $DC_FOLDER/pulled

echo "Build DC01"
packer build -var-file=./credentials.json windows19/windows2019.json


echo "Extracting the DC's IP Address"
DC_IP=$(grep 'IPv4.*Address.*' $DC_FOLDER/pulled/ipconfig.out | cut -d':' -f2 | cut -d'(' -f1 | sed -e 's/  */ /g' -e 's/^ *\(.*\) *$/\1/')
echo "DC IP: " $DC_IP

echo "Preparing the AD join scripts"
# Change join-ad.ps1 according to the given DHCP lease. 
sed 's/1.1.1.1/'$DC_IP'/' $CLIENT_10/base/join-ad.ps1  > $CLIENT_10/setup/join-ad.ps1


echo "Build Client VM"
packer build -var-file=./credentials.json windows10/windows10.json


echo "Done! happy hacking : )"
