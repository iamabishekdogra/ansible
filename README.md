Ansible

Overview

Ansible is an open-source automation tool designed to automate configuration management, application deployment, and task execution. It allows you to define your infrastructure as code, making it easier to manage and scale.

Key Features

Agentless:  Ansible doesn’t require any agents to be installed on the target machines. It uses SSH for communication.
Declarative Language:  Ansible uses a simple, human-readable language (YAML) to describe your infrastructure.
Idempotent:  Ansible ensures that changes are applied only when necessary, avoiding repeated modifications.
Modular:  It supports a wide range of modules and plugins to extend its capabilities.

Components

Playbooks:  YAML files where you define the tasks to be executed on your managed nodes.
Inventories:  Lists of hosts or groups of hosts where tasks are to be executed.
Roles:  Reusable units of configuration that encapsulate tasks, variables, and handlers.
Modules:  Units of code that Ansible executes on your managed nodes, such as installing packages or copying files.

Basic Commands

ansible: Run commands on remote hosts.
ansible-playbook: Execute playbooks.
ansible-galaxy: Manage and share roles.

Example Play book

---
- name: Ensure Apache is installed and running
  hosts: webservers
  become: yes
  tasks:
    - name: Install Apache
      apt:
        name: apache2
        state: present

    - name: Start Apache service
      service:
        name: apache2
        state: started

