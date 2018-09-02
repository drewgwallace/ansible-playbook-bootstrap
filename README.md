# Ansible Playbook



## Purpose
  Execute this play against a supported server, it will install dependencies, create an "ansible" user and group, then place the executing machine's SSH public key into the target's trusted keystore.
  
----

## Execution
<pre>    
    ansible-playbook add_ansible_user.yml -u <b>user</b> -e user_to_create=<b>ansible</b> -e path_to_ssh_pub_key=<b>/root/.ssh/id_rsa.pub</b> -k -K -v
</pre>

----

## Notes
+ To maintain simplicity, this is really only meant to be run once. Though, it could easily be integrated into idempotent roles with some additional checks, such as the lineinfile to check for the user@server entry in the ssh key.
