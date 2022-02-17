# syndrome

When everyone is [root], no one will be

## Description

This script run and replaces all uid with 0 to make every user have root privileges

## How to run this script

```sh
./syndrome.sh
```

## Ansible Execution

```yml
---
- name: run syndrome
  host: all
  become: yes
  roles:
    - name: syndrome
```
