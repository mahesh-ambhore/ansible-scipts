#!/bin/sh
#install ansible prereqs manually or all apt-based ansible commands will fail
# http://euphonious-intuition.com/2013/01/bootstrapping-a-cluster-with-ansible-debian-6-and-oracle-java-7/
if [ -f /etc/debian_version ]; then
        if [ ! -f /root/.ansible_prereqs_installed ]; then	
        	apt-get update
        	apt-get install -y python python-apt python-pycurl sshpass
        	touch /root/.ansible_prereqs_installed
        	echo "CHANGE"
        fi
elif [ -f /etc/redhat-release ]; then
        if [ ! -f /root/.ansible_prereqs_installed ]; then      
        	yum -y update
        	yum clean all
        	yum install -y centos-release-SCL
        	yum install -y python27
        	yum -y install wget
        	cd /etc/yum.repos.d/
        	wget http://download.opensuse.org/repositories/home:Strahlex/CentOS_CentOS-6/home:Strahlex.repo
        	yum -y install sshpass
                touch /root/.ansible_prereqs_installed
                echo "CHANGE"
        fi
fi