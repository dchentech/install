Veewee::Session.declare({
  :cpu_count => '2',
  :memory_size=> '2048',
  :disk_size => '20480',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'RedHat6_64',
  :iso_file => "CentOS-6.4-x86_64-minimal.iso",
  :iso_src => "http://yum.singlehop.com/CentOS/6.4/isos/x86_64/CentOS-6.4-x86_64-minimal.iso",
  :iso_md5 => "4a5fa01c81cc300f4729136e28ebe600",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 100,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "100",
  :ssh_user => "veewee",
  :ssh_password => "veewee",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    #"chef.sh",
    #"puppet.sh",
    "virtualbox.sh", # 必须安装，否则共享文件挂载不上

    #"ruby.sh",
    #"python.sh",
    #"mongodb.sh",
    #"nodejs.sh",

    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})
