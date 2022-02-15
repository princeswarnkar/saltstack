#/bin/bash

LYNIS_REPO=/etc/apt/sources.list.d/cisofy-lynis.list
sudo wget -O - https://packages.cisofy.com/keys/cisofy-software-public.key | sudo apt-key add -
sudo apt install apt-transport-https
echo 'Acquire::Languages "none";' | sudo tee /etc/apt/apt.conf.d/99disable-translations
    
if [[ -f $LYNIS_REPO ]]; then
	echo "Repo Exists"
	sudo apt-get update
        sudo apt-get install lynis -y

else
	echo "deb https://packages.cisofy.com/community/lynis/deb/ stable main" | sudo tee /etc/apt/sources.list.d/cisofy-lynis.list
	sudo apt-get update
        sudo apt-get install lynis -y
fi
