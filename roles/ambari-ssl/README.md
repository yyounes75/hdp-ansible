ambari-ssl
=========

A simple role for setting up SSL in Ambari

Requirements
------------

Primarily tested and functional on CentOS 7, but open to others.

Role Variables
--------------

The following variables are used by this role and values are defined in defaults/main.yml:


Example Playbook
----------------

Here is an example playbook that can readily wrap this role and still be fairly flexible.  You typically don't need to be this flexible on password source.

    - hosts: servers
      vars_files:
        - vars/private.yml
      vars:

License
-------

GPLv2

Author Information
------------------

https://github.com/ymadoff/
