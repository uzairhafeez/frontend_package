echo "UNZIP BUNDLE_FE"


packageNum=`php /home/uzair/package_deploy/testRabbitMQClient.php nextPackage backendPackage.tar.gzi | xargs`

mkdir $HOME/Packages/Unzip/
cd $HOME/Packages/Unzip/

tar -xzf /home/uzair/Packages/frontendPackage-v"$packageNum".tar.gz -C /home/uziar/Packages/Unzip

sudo cp -a $HOME/Packages/frontend/Unzip/. /var/www/html/

echo -e "\n"
echo "Success"

rm -r $HOME/Packages/frontend/Unzip

