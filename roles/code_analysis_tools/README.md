##### Role Name : code_analysis_tools

##### Description :
This role install below code analysis tools
1. phpcpd
2. phpcb
3. phpmd
4. phpunit
5. phpcs ( with symfony2, drupal, wordpress and magento coding standards)
6. ant

##### Example Playbook :
Including an example of how to use role in playbook:

    - hosts: servers
      roles:
        - { role: code_analysis_tools }


##### Note: 
Role verified on Ubuntu 14.04 and CentOs 6.
