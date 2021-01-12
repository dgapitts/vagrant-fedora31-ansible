#! /bin/bash
if [ ! -f /home/vagrant/already-installed-flag ]
then
  echo "ADD EXTRA ALIAS VIA .bashrc"
  cat /vagrant/bashrc.append.txt >> /home/vagrant/.bashrc
  #echo "GENERAL YUM UPDATE"
  #dnf -y update
  #echo "INSTALL GIT"
  dnf -y install git
  #echo "INSTALL VIM"
  #dnf -y install vim
  #echo "INSTALL TREE"
  dnf -y install tree
  #echo "INSTALL unzip curl wget lsof"
  dnf  -y install unzip curl wget lsof 
  # install sysstat
  dnf -y install sysstat
  systemctl start sysstat
  systemctl enable sysstat


  # setup environment variables and extra alias for postgres user
  # cat /vagrant/bashrc.append.txt >> /var/lib/pgsql/.bash_profile


  # setup help files
  dnf -y install python2
  dnf -y install python-virtualenv
  dnf -y install gcc openssl-devel

else
  echo "already installed flag set : /home/vagrant/already-installed-flag"
fi

