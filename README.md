# Ansible Role Pip

[![Build Status](https://travis-ci.org/darkraiden/ansible-role-pip.svg?branch=master)](https://travis-ci.org/darkraiden/ansible-role-pip)

Install and configure Python Pip.

## Dependencies

None

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```
pip_command_pip: pip
pip_command_python: python
```

Pip and python command names.

```
pip_download_filename: get-pip.py
pip_download_url: "https://bootstrap.pypa.io/{{ pip_download_filename }}"
pip_download_dest: /tmp
```

Pip filename, download url and temp destination.

```
pip_version: 10.0.1
```

Desired pip version to be installed.

## Example Playbook

```
- hosts: all
  become: True
  roles:
    - darkraiden.ansible-pip
```

## Test Kitchen

### Install Deps

```
$ bundle
```

### VMs

This kitchen configuration comes with the following docker images:

* centos:7
* ubuntu:trusty
* ubuntu:xenial
* debian:jessie
* debian:stretch
* fedora:26
* fedora:25
* fedora:24

If you want to test the role using all of those containers, just run the commands below as they are. If you want to test the role on one system only, append to the commands below the VM name.

e.g.

```
$ bundle exec kitchen converge trusty
```

To converge the `trusty` container only.

### Create the Containers

```
$ bundle exec kitchen create
```

### Converge your role

```
$ bundle exec kitchen converge
```

### Run serverspec tests

```
$ bundle exec kitchen verify
```

### Destroy the Containers

```
$ bundle exec kitchen destroy
```

### Run Create/Converge/Verify/Destroy in one command

```
$ bundle exec kitchen test
```

### Write your tests

You can write your own test by adding a new file or editing the existing one living in the `test/integration/pip/serverspec/localhost` directory. More info about how to write serverspec test can be found [here](http://serverspec.org/).

## License

MIT (Expat) / BSD

## Author Information

This role was created in 2017 by [Davide Di Mauro](https://github.com/darkraiden).
