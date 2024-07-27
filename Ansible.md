> [!NOTE]
> Ansible is a suite of software tools that enables infrastructure as code. It is open-source and the suite includes software provisioning, configuration management, and application deployment functionality.

> [!IMPORTANT]
> - Inventory
> - Host
> - Group
> - Playbook
> - Play
> - Task
> - Modules
> - Library


# Installation
```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
To check ansibel version:
```
ansible --version
```
# Inventory
Ansible works against multiple systems in your infrastructure at the same time. It does this by selecting portions of systems listed in Ansible’s inventory file, which defaults to being saved in the below location.
```
cat /etc/ansible/hosts
```
Add one line to our default inventory:
```
192.168.25.16 ansible_ssh_pass=password
```
Ping the localhost using Ad-Hoc Commands on Local Machine
```
ansible -m ping localhost
```

Ping this IP through Ansible using below command:
```
ansible 192.168.25.16 -m ping
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
# Playbook



