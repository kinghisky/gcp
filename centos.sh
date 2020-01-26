#!/bin/bash
sudo passwd
sudo sed -i 's|PermitRootLogin no|PermitRootLogin yes|' /etc/ssh/sshd_config
sudo sed -i 's|PasswordAuthentication no|PasswordAuthentication yes|' /etc/ssh/sshd_config
sudo /etc/init.d/ssh restart
