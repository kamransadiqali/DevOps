> [!NOTE]
> Useful information about Ansible.

To check ansibel version:
```
ansible --version
```
The default location for inventory is:
```
cat /etc/ansible/hosts
```
Add one line to our default inventory:
```
192.168.25.16 ansible_ssh_pass=password
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
```
