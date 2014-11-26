echo "安装 Linuxbrew 到当前用户环境"

cat > /tmp/install_linuxbrew_by_$USER<< EOM
if [ ! -d $HOME/.linuxbrew ]; then
  git clone https://github.com/Homebrew/linuxbrew.git $HOME/.linuxbrew
  echo 'export PATH="\$HOME/.linuxbrew/bin:\$PATH"' >> $HOME/.bash_profile
  echo 'export LD_LIBRARY_PATH="\$HOME/.linuxbrew/lib:\$LD_LIBRARY_PATH"' >> $HOME/.bash_profile
fi
EOM

su - $HOME -c "bash /tmp/install_linuxbrew_by_$USER.sh"
