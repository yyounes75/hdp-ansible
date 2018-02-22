ambari-kerberos
=========

A simple role to enable Kerberos on a cluster installed with Ambari-server

Requirements
------------

Primarily tested and functional on CentOS 7, but open to others. Need OpenLDAP and Kerberos servers to be already installed.

Role Variables
--------------

The following variables are used by this role and values are defined in defaults/main.yml:

ambari_server_hostname: ambariserver01.habibiz      # Hostname/IP of the ambari-server
ambari_server_port: 8442                            # Port used by the ambari-server
ambari_server_protocol: https                       # Protocol user by the ambari-server (http or https)
ambari_namespace: cluster01                      # Your cluster name when you installed it with ambari
kdc_server: mykdcserver.habibiz                     # KDC server hostname or IP
kerberos_realm: myRealm                             # KDC REALM
kerberos_principal: admin/admin@HABIBIZ             # Your principal
kerberos_principal_password: admin123               # Principal password

Example Playbook
----------------

Here is an example playbook that can readily wrap this role.

    - hosts: myserver
      vars_files:
        - vars/private.yml
        
      roles:
         - role: ambari-kerberos
           vars:
             ambari_server_hostname: ambariserver01.habibiz
             ambari_server_port: 8442
             ambari_server_protocol: https
             ambari_namespace: cluster01
             kdc_server: mykdcserver.habibiz
             kerberos_realm: myRealm
             kerberos_principal: admin/admin@HABIBIZ
             kerberos_principal_password: admin123
             
License
-------

GPLv2

Author Information
------------------

https://github.com/ymadoff/
