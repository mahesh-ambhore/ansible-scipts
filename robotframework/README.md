This playbook install following :
- roboframework and required packages

Following packages are required to execute script

- Ansible 2.2.1.0
- Python 2.7.6

##### Steps to execute :

- git clone repo
- create ansible.cfg file in your playbook directory and add following line :

[defaults]
roles_path = git_repo/roles

###### Note : “git_repo/roles” is the role directory path.
- Add nodes information in hosts file of git_repo/slave/hosts

- Configure “requirement.txt” according to your requirement.

- Execute below commands:
cd /git_repo/salve/

ansible-playbook -i hosts site.yml (To execute on all hosts)
 or
ansible-playbook -i hosts site.yml --limit 'ubuntu' (To execute on group hosts For ex: In current command  "ubuntu" is the group name).
