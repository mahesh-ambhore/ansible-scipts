This playbook install following :
- vagrant
- virtualbox
Following packages are required to execute script:
- Ansible 2.2.1.0
- Python 2.7.6

#### Steps to execute :
- git clone repo

- create ansible.cfg file in your playbook directory and following line :
[defaults]
roles_path = git_repo/roles

###### Note : “git_repo/roles” is the role directory path.
- Add nodes information in hosts file of git_repo/vagrant/hosts

- Execute below commands:
    cd /git_repo/vagrant/
	ansible-playbook -i hosts site.yml (To execute on all hosts)
    or
    ansible-playbook -i hosts site.yml --limit 'ubuntu' (To execute on group hosts For ex: In current command  "ubuntu" is the group name).