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
pip_version: 9.0.1
```

Desired pip version to be installed.

## Example Playbook

```
- hosts: all
  become: True
  roles:
    - ansible-role-pip
```

## Test Kitchen

### Install Deps

```
$ bundle
```

### VMs

This kitchen configuration comes with 3 different VMs:

* centos7
* trusty
* xenial

If you want to test the role using all of those machines, just run the commands below as they are. If you want to test the role on one system only, append to the commands below the VM name.

e.g.

```
$ bundle exec kitchen converge trusty
```

To converge the `trusty` VM only.

### Create the VM

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

**NB**: To run `verify` the VM must be converged first.

### Destroy the VM

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
