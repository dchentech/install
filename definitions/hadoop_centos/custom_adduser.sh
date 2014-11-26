# 添加用户和ssh等

export USERNAME=vox_etl
useradd -d /home/$USERNAME -s /bin/bash $USERNAME

cd /home/$USERNAME
mkdir -p .ssh
touch .ssh/authorized_keys
chmod 0600 .ssh/authorized_keys
chmod -R 0600 .ssh
chown -R $USERNAME:$USERNAME .ssh
