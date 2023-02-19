Vagrant.configure("2") do |config|
    config.vm.box = "debian-buster"
  
    config.vm.provider "virtualbox" do |vb|
      vb.name = "lamp-stack"
      vb.memory = "1024"
      vb.cpus = 2
    end
  
    config.vm.hostname = "debian"
  
    config.vm.network "forwarded_port", guest: 80, host: 8000
  
    config.vm.provision "shell", path: "provision.sh"
end
