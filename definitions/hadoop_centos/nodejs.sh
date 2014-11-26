# Install Node.js

# 遇到 [Errno 14] PYCURL ERROR 7 - "Failed to connect to
# 2001:da8:8000:6023::230: Network is unreachable" Trying other mirror.
# 错误，可以尝试反复安装解决
#yum -y install nodejs npm --enablerepo=epel

#if [ ! -f /usr/bin/bower ]; then
#  npm install bower -g
#fi

# 改用nvm安装
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
source ~/.bash_profile
nvm install 0.10.26
nvm alias default 0.10.26
npm install bower grunt -g
