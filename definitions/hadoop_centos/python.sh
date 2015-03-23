echo "安装 Python等相关 到当前用户环境"

# 安装图片处理依赖
yum -y install patch libtiff-devel libjpeg-devel libzip-devel freetype-devel lcms2-devel libwebp-devel tcl-devel tk-devel

cat > /tmp/install_python_by_$USER.sh << EOM
cd $HOME

# 安装pyenv
if [ ! -d .pyenv ]; then
  git clone https://github.com/yyuu/pyenv.git .pyenv
  echo 'export PIP_DOWNLOAD_CACHE=\$HOME/.pip_download_cache' >> .bash_profile
  echo 'export PYENV_ROOT="\$HOME/.pyenv"' >> .bash_profile
  echo 'export PATH="\$PYENV_ROOT/bin:\$PATH"' >> .bash_profile
  echo 'export PYENV_VERSION=2.7.9' >> .bash_profile
  echo 'eval "\$(pyenv init -)"' >> .bash_profile
fi

# 安装python2.7.5
source .bash_profile
if [ ! -f $HOME/.pyenv/versions/2.7.9 ]; then
  # http://fduo.org/pyenv-mirrow/
  export PYTHON_BUILD_MIRROR_URL="http://pyenv.qiniudn.com/pythons/"
  # CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" # https://github.com/yyuu/pyenv/wiki/Common-build-problems # find the zlib headers
  pyenv install --keep --verbose 2.7.9
  pyenv shell 2.7.9
  pyenv rehash
fi

pip install virtualenv
EOM

su - $USER -c "bash /tmp/install_python_by_$USER.sh"
