#!/bin/bash

echo "This is a bootstrap to add an Ansible user and configure ssh key-based logins"
echo

#Prompt for target machine
echo -e "Please provide target machine: \c"
read target
echo

#Prompt for target machine username
echo -e "Please provide target machine username: \c"
read username

#Prompt for target machine password
echo -e "Please provide $username's password: \c"
read -s user_pass
echo

#Prompt for cached ansible credentials
echo -e "Please provide ansible cached credentials (mkpasswd --method=sha-512): \c"
read -s ansible_pass
echo
echo "Attempting..."
echo

# echo $target
# echo $username
# echo $ansible_pass

ansible-playbook /etc/ansible/playbooks/add_ansible_user.yaml -e "ansible_user=$username ansible_ssh_pass=$user_pass ansible_become_pass=$user_pass" --extra-vars=" host=$target ansible_pass=$ansible_pass" -vv
