#!/bin/bash
sudo passwd
sudo sed -i 's|PermitRootLogin prohibit-password|#PermitRootLogin prohibit-password|' /etc/ssh/sshd_config
sudo sed -i 's|PasswordAuthentication no|PasswordAuthentication yes|' /etc/ssh/sshd_config
sudo service ssh restart;;
