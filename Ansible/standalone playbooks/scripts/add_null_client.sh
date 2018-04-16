#!/bin/bash

echo "This is to configure the target hosts for null client mail communication"
echo

#Prompt for target mail server
echo -e "Please provide target mail server: \c"
read destination_mail_server
echo

#Prompt for target mail recipient for test
echo -e "Please provide an email for testing the output: \c"
read mail_recipient
echo

#Prompt for target machine password
echo -e "Please provide ansible's sudo password: \c"
read -s user_pass

echo
echo "Attempting..."
echo

ansible-playbook ../add_null_client.yaml -e "ansible_become_pass=$user_pass" --extra-vars=" destination_mail_server=$destination_mail_server mail_recipient=$mail_recipient" -vvvv

echo

echo "################################################"
echo "Configure simple messages in the format:"
echo "echo \"<BODY>\" | mail -s \"<SUBJECT>\" <RECIPIENT>"
echo "################################################"
echo