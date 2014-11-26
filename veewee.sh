echo "[veewee] 安装制作镜像的的gem"
gem install veewee

echo "[VirtualBox] 安装虚拟机管理"
sudo yum update -y # http://unix.stackexchange.com/questions/104449/undefined-symbol-in-usr-lib64-libgl-so-1-when-using-ssh
sudo wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -O /etc/yum.repos.d/virtualbox.repo
sudo yum install VirtualBox-4.3 -y

# veewee vbox define centos_web CentOS-6.4-x86_64-minimal

# 拷贝文件到虚拟机
# veewee vbox copy flask_centos definitions/flask_centos/mongodb.sh /home/veewee/mongodb.sh
#
# 执行某一安装脚本
# echo 'veewee'|sudo -S sh './base.sh'
#
# build box
# veewee vbox build flask_centos

# 导出box
# veewee vbox export flask_centos
#
# http://www.360doc.com/content/13/0826/17/13047933_310047914.shtml
# vagrant package --output flask_centos_20140328.box --base flask_centos_1395830164613_19402


rm -rf ~/Library/VirtualBox/
rm -rf ~/VirtualBox\ VMs
