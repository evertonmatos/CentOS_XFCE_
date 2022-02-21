#! /bin/sh

# Para descobrir o IP do centos
# hostname -I

ip_destino=$1
root_password=$2

sudo yum install ansible -y
ssh-keygen -R root@$ip_destino
ssh-keyscan $ip_destino >> ~/.ssh/known_hosts
echo yes | ssh-copy-id root@$ip_destino
rm -rf /tmp/CentOS_XFCE.zip
zip -r /tmp/CentOS_XFCE.zip .
ssh root@$ip_destino rm -rf /CentOS_XFCE
scp /tmp/CentOS_XFCE.zip root@$ip_destino:/tmp/CentOS_XFCE.zip
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/00_unzip_project.yml
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/01_setting_permissions.yml
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/02_update_system.yml
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/03_config_dns.yml
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/05_centos_graphical_x11.yml
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/06_centos_graphical_xfce.yml
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/07_centos_text_mode.yml
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/08_centos_graphical_desktop.yml
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/09_config_user.yml
ansible-playbook -i root@$ip_destino, --extra-vars "ansible_sudo_pass=$root_password" ansible/centos8/10_update_db.yml