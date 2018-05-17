# Ansible Playbook

----

## Purpose
    Execute this play against a supported server, it will install dependencies, create an "ansible" user and group, then place the executing machines SSH public key into the target's trusted keystore.
----

## Notes
    Be sure to populate the vars/add_ansible_user.ini file with your variables.
    To maintain simplicity, this is really only meant to be run once. Though, it could easily be integrated into idempotent roles with some additional checks, such as the lineinfile to check for the user@server entry in the ssh key.