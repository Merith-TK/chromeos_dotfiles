if [ ! -d /usr/home/ ]; then
	mkdir /usr/home/
	chmod 777 /usr/home/ -R
	echo "Directories made, please rerun this script"
	exit
else
	cp ./bashrc /usr/home/.bashrc
	cp -r ./.bash /usr/home/
	echo "
		export HOME=/usr/home/
		source /usr/home/
		cd $HOME
	" > $HOME/.bashrc
fi
