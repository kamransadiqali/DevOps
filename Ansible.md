![Ansible_Logo](https://github.com/user-attachments/assets/22bc7e65-b9e0-4bac-8f29-6e35793df4c7)

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

## Installation
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

### Creating custom inventory file
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
### Inventory Parameters
- **ansible_user** The default ssh user name to use.
- **ansible_ssh_private_key_file** Private key file used by ssh. Useful if using multiple keys and you don’t want to use
SSH agent.
- **ansible_become** Equivalent to ansible_sudo or ansible_su, allows to force privilege escalation.

### Ad-Hoc Commands on Inventory
```
ansible -m ping webserver1
ansible -m ping dbserver1
ansible -m shell -a 'ls -al' webserver1
ansible -m shell -a 'whoami' dbserver1
ansible -m shell -a 'ifconfig' webserver1
ansible -m shell -a 'hostname' dbserver1
```
### Tasks as Ad-Hoc Commands
```
ansible webservers -m file -a "path=/var/www/html/assets state=directory"
ansible webservers -m apt -a "name=nginx state=present"
ansible webservers -m service -a "name=nginx enabled=yes state=started"
```
### Module Ad-Hoc Commands
```
ansible-doc -l
ansible-doc apt
ansible -m apt -a "name=nginx state=present update_cache=yes" web1
ansible -m shell -a "whoami" web1 --become
```
### Playbook
```
---
- name: Update web servers
  hosts: webservers
  remote_user: root
  tasks:
    - name: Ensure apache is at the latest version
      yum:
        name: httpd
        state: latest
```
```
- name: this is our first play.
  hosts: webserver1
  tasks:
    - name: "create a dummy file on websever1"
      command: touch /tmp/ansible_dummy.txt
```
```
ansible-playbook playbook1.yml -i final_inventory.yml
```
### Roles
To create Ansible roles, use the ansible-galaxy command which has the templates to create it. This will create it under the default directory /etc/ansible/roles.
```
ansible-galaxy init dummy

- name: this is our 1st play.
  hosts: webserver1
  roles:
    - php
    - webserver
```
### Synchronous playbook tasks
```
- name: this is our 1st play.
  hosts: webserver1
  tasks:
    - name: "sleep for 120 sec"
      command: sleep 120
    - name: "second task"
      command: touch /tmp/second_task.txt
```
The first task sleep for 120 sec will take 2 minutes to complete. Once the sleep is over, it will create a file at a defined location. In this period, a connection might be interrupted causing failure.
### Asynchronous playbook tasks
```
- name: this is our 1st play.
  hosts: webserver1
  tasks:
    - name: "sleep for 60 sec"
      command: sleep 60
      async: 70
      poll: 35
    - name: "second task"
      command: touch /tmp/second_task.txt
```
async = Maximum runtime. The task will timeout if it exceeds the limit of this parameter.

poll = This parameter tells how frequently you would like to poll for status

### Ignoring failed commands
```
- name: "strategy demo"
  hosts: webserver1,sqlserver1
  tasks:
    - name: "first task"
      command: touch /tmp/task/task1.txt
      ignore_errors: True
    - name: "second task"
      command: touch /tmp/task2.txt
```
### Encrypting a file
```
ansible-vault encrypt inventory.txt --output enc_inven.txt
```
### Viewing encrypted file
```
ansible-vault view enc_inven.txt
```
### Running Ansible with Vault-Encrypted Files
```
ansible-playbook -i enc_inven.txt playbook.yml --ask-vault-pass
```
### Lookups for CSV
```
- name: Test Connectivity
  hosts: webserver1
  vars:
    ansible_ssh_pass: "{{ lookup('csvfile', 'webserver1 file=credentials.csv delimiter=,') }}"
  tasks:
    - name: create a dummy file on webserver
      command: touch /tmp/csv_lookups.txt
```
### Run Ansible Tasks as Sudo
```
- name: this is our first play.
  hosts: webserver
  sudo: yes
  tasks:
    - name: "create a dummy file on websever1"
      lineinfile: dest=/etc/resolv.conf line="nameserver 8.8.8.8"
```
For running this playbook, we need to provide the password as well for the sudo privilege. The same can be achieved by passing the ask-become-pass flag in the Ansible command as below:
```
ansible-playbook lineInFile1.yml --ask-become-pass
```
### Run Ansible Tasks as a user other than root
```
- name: this is our first play.
  hosts: webserver
  become: yes
  become_user: user
  become_method: su
  tasks:
    - name: "login username"
      command: touch /tmp/become_user.txt
```

