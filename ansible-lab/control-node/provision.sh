#!/bin/sh
sudo apt install epel-release
sudo apt install nfs-kernel-server
echo "Inicio da instalação do Ansible"
sudo apt install -y ansible  # Instala o Ansible

# Adiciona os hosts ao arquivo /etc/hosts
sudo bash -c 'cat <<EOT >> /etc/hosts
192.168.10.2 control-node
192.168.10.3 app01
192.168.10.4 db01
EOT'