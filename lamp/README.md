##### This playbook installs
1. apache
2. mysql-server
3. mysql-client
4. Anyone fron following veriosn of PHP 
	* 5.5
	* 5.6
	* 7.0
	* 7.1

##### Following packages are required to execute script
1. Ansible 2.2.1.0
2. Python 2.7.6 

##### Steps to execute
1. git clone repo
2. Create file git_repo/jenkins/ansible.cfg and add
	[defaults]
	roles_path=git_repo_path/roles.
3. Create file git_repo/jenkins/hosts and add nodes information in git_repo/jenkins/hosts.
4. Execute below commands
	cd /git_repo/lamp/ 
	ansible all -i hosts -m script -a "../ansible_prereqs.sh"
	ansible-playbook -i hosts lamp.yml
