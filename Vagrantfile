# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.network "private_network", ip: "10.0.2.31"
  config.vm.network "private_network", ip: "10.0.2.32"
  config.vm.network "private_network", ip: "10.0.2.33"

  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = 6144
     vb.cpus = 2
  end

  config.vm.provision "shell", inline: "apt-get update -y"
  config.vm.provision "shell", path: "./scripts/tools.sh"
  config.vm.provision "shell", path: "./scripts/java.sh"
  config.vm.provision "shell", path: "./scripts/redis.sh"
  config.vm.provision "shell", path: "./scripts/elasticsearch.sh"
  config.vm.provision "shell", path: "./scripts/memcached.sh"
  config.vm.provision "shell", path: "./scripts/postgresql.sh"
  config.vm.provision "shell", path: "./scripts/mysql.sh"
  config.vm.provision "shell", path: "./scripts/influxdb.sh"

end
