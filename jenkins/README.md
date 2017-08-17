##### This play installs following:
1. jenkins
2. java
3. PHP 5.6
4. git
5. code analysis tools
	* phpcpd
	* phpcb
	* phpmd
	* phpunit
	* phpcs ( with symfony2, drupal, wordpress and magento coding standards)

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
	cd /git_repo/jenkins/ 
	ansible all -i hosts -m script -a "../ansible_prereqs.sh"
5. Enter below command it will prompt for backup tar file path or url, If user not enter anything it will look for ( jenkins_backup.tar.gz) in current location. 
	ansible-playbook -i hosts jenkins.yml
