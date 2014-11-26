# Install MongoDB

cat > /etc/yum.repos.d/mognodb.repo << EOM
[mongodb]
name=MongoDB Repository
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
gpgcheck=0
enabled=1
EOM

# 加快MongoDB下载
wget http://soft.17zuoye.net/mongo-10gen-2.4.9-mongodb_1.x86_64.rpm -O /var/cache/yum/x86_64/6/mongodb/packages/mongo-10gen-2.4.9-mongodb_1.x86_64.rpm
wget http://soft.17zuoye.net/mongo-10gen-server-2.4.9-mongodb_1.x86_64.rpm -O /var/cache/yum/x86_64/6/mongodb/packages/mongo-10gen-server-2.4.9-mongodb_1.x86_64.rpm

yum -y install mongo-10gen mongo-10gen-server
service mongod start
chkconfig mongod on
