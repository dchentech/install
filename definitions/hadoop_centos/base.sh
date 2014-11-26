# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=epel
baseurl=http://download.fedoraproject.org/pub/epel/6/\$basearch
enabled=1
gpgcheck=0
EOM

yum clean all # meta
yum -y update
yum -y install gcc make gcc-c++ g++ autoconf automake libtool bison
yum -y install zlib-devel openssl-devel readline-devel sqlite-devel bzip2-devel libxml2-devel
yum -y install libyaml-devel libffi-devel
yum -y install rpm-build git wget curl dkms nfs-utils screen vim tree
yum -y install perl ruby python
yum -y install python-devel libevent-devel libxslt-devel
yum -y install mongodb-server mongodb mysql-devel mysqltuner
yum -y install truss strace lstrace htop lsof iostat vmstat iftop
yum -y install numpy scipy sympy blas-devel lapack-devel


# /tmp/vbox.0/Makefile.include.header:97: *** Error: unable to find the
# sources of your current Linux kernel. Specify KERN_DIR=<directory> and run Make again. Stop
yum -y install kernel-devel-`uname -r` kernel-debug-devel kernel-devel kernel-headers kernel

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
