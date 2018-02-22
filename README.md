## hosts
Mandatory :
- Two group => **master** and **worker**
- Full hostname (needs to reflect configuration of bare metal server or your virtual machine with Vagrant "node.vm.hostname")
- **ansible_ssh_host** parameter with the correct IP

Optional :
- **ansible_ssh_private_key_file** : in the exemple we use it to deploy on Vagrant virtual machine

Exemple:
```
[master]
master1.habibiz ansible_ssh_host=10.10.10.11 ansible_ssh_user=vagrant ansible_ssh_private_key_file=~/.vagrant.d/insecure_private_key

[worker]
worker1.habibiz ansible_ssh_host=10.10.10.16 ansible_ssh_user=vagrant ansible_ssh_private_key_file=~/.vagrant.d/insecure_private_key
worker2.habibiz ansible_ssh_host=10.10.10.17 ansible_ssh_user=vagrant ansible_ssh_private_key_file=~/.vagrant.d/insecure_private_key
worker3.habibiz ansible_ssh_host=10.10.10.18 ansible_ssh_user=vagrant ansible_ssh_private_key_file=~/.vagrant.d/insecure_private_key
```

## certs

Certificates needs to be rename like this HOSTNAME_OF_MY_SERVER.cert.pem and HOSTNAME_OF_MY_SERVER.key.pem and needs
to be placed in the folder files/cert. 
In the file **vars/external_vars.yml** check all vars security_ssl_*

## repos

files/ambari.repo and files/hdp.repo needs to reflect your repository configuration. Use a docker lighttpd with Ambari and HDP folder repository.

## vars

**vars/external_vars.yml** needs to reflect your configuration and the configuration you want to deploy.
Check the servers hostnames, passwords, realms...

## exemples run

Bare metal :
`ansible-playbook -i hosts deploy.yml -u root -k myRootPassword`

Vagrant :
`ansible-playbook -i hosts deploy.yml -u vagrant -s`
