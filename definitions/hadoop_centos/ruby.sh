echo "安装 Ruby 到当前用户环境"

cat > "/tmp/install_ruby_by_$USER\.sh" << EOM
if [ ! -d $HOME/.rvm ]; then
  curl -sSL https://get.rvm.io | bash -s stable
fi

source $HOME/.rvm/scripts/rvm

if [ ! -f $HOME/.rvm/rubies/ruby-1.9.3-p545/bin/ruby ]; then
  rvm install 1.9.3
  rvm use 1.9.3 --default
  gem install bundle -V --no-ri --no-rdoc
fi
EOM

su - $USER -c "bash /tmp/install_ruby_by_$USER\.sh"
