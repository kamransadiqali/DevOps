> [!NOTE]
> **Ansible** *is a suite of software tools that enables infrastructure as code. It is open-source and the suite includes software provisioning, configuration management, and application deployment functionality.*

> [!IMPORTANT]
> - Inventory
> - Host
> - Group
> - Playbook
> - Play
> - Task
> - Modules
> - Library

# Inventory
Ansible works against multiple systems in your infrastructure at the same time. It does this by selecting portions of systems listed in Ansible’s inventory file, which defaults to being saved in the /etc/ansible/hosts location.
# Host
A host is simply a remote machine that Ansible manages. They can have individual variables assigned to them, and can also be organized in groups.
# Group
A group consists of several hosts assigned to a pool that can be conveniently targeted together, and also given variables that they share in common.
# Playbook
Playbooks are the language by which Ansible orchestrates, configures, administers, or deploys systems. Playbooks contain Plays.
# Play
A play is a mapping between a set of hosts selected by a host specifier and the tasks which run on those hosts to define the role that those systems will perform.
# Task
Tasks combine an action with a name and optionally some other keywords (like looping directives). Tasks call modules.
# Module
Modules are the units of work that Ansible ships out to remote machines. Ansible refers to the collection of available modules as 
a library.
# Library
A collection of modules made available to /usr/bin/ansible or an Ansible playbook.

# Installation
```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
Check the ansible version
```
ansible --version
```
Ping this IP through Ansible using below command:
```
ansible 192.168.25.16 -m ping
```
Add one line to our default inventory:
```
192.168.25.16 ansible_ssh_pass=password
```
Ping the localhost by Ad-Hoc Commands on Local Machine
```
ansible -m ping localhost
```

Creating custom inventory file
- Disabling host key checking Firstly, make a change in ansible.cfg file which is located at /etc/ansible directory Uncomment the line host_key_checking = False
- Create inventory file In /etc/ansible/ directory, and create inventory.txt file, and add below details to it: vi inventory.txt
```
webserver1 ansible_host=192.168.25.16 ansible_ssh_pass=password ansible_connection=ssh ansible_port=22 ansible_user=root
dbserver1 ansible_host=192.168.25.17 ansible_ssh_pass=password ansible_connection=ssh ansible_port=22 ansible_user=root
```
To ping all the machines in inventory1.txt file, use the command below:
```
ansible all -m ping -i inventory1.txt
```
To ping all the hostnames starting with 'webserver', we can also use wild card (*) using below command:
```
ansible webserver* -m ping -i inventory2.txt
```
Organizing Servers Into Groups and Subgroups in Inventory file
```
[webservers]
webserver1
webserver2
webserver3

[dbservers]
dbserver1
dbserver2
dbserver3
```
Inventory Parameters
- **ansible_user** The default ssh user name to use.
- **ansible_ssh_private_key_file** Private key file used by ssh. Useful if using multiple keys and you don’t want to use
SSH agent.
- **ansible_become** Equivalent to ansible_sudo or ansible_su, allows to force privilege escalation.

Run some shell commands on the hosts and groups you defined
```
ansible -m shell -a 'ls -al' webserver1
ansible -m shell -a 'whoami' dbserver1
ansible -m shell -a 'ifconfig' webserver1
ansible -m shell -a 'hostname' dbserver1
```


