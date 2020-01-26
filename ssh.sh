#!/bin/sh
until
		echo "1.centos"
		echo "2.ubuntu"
		read input
		test $input = 2
		do
			case $input in
			1)sudo passwd
sudo sed -i 's|PermitRootLogin no|PermitRootLogin yes|' /etc/ssh/sshd_config
sudo sed -i 's|PasswordAuthentication no|PasswordAuthentication yes|' /etc/ssh/sshd_config
sudo /etc/init.d/ssh restart;;
			2)sudo passwd
sudo sed -i 's|PermitRootLogin prohibit-password|#PermitRootLogin prohibit-password|' /etc/ssh/sshd_config
sudo sed -i 's|PasswordAuthentication no|PasswordAuthentication yes|' /etc/ssh/sshd_config
sudo service ssh restart;;
      esac
			done
