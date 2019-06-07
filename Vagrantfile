Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"

    config.vm.define "wordpress" do |wordpress|
      wordpress.vm.network "private_network", ip: "192.168.50.102"

      wordpress.vm.provision "shell", path: "script_curso_ansible_wordpress.sh"
      wordpress.vm.provider "virtualbox" do |vb|
        vb.name = "ubuntu18_wordpress"
      end
    end

    config.vm.define "ansible" do |ansible|
      ansible.vm.network "private_network", ip: "192.168.50.101"

      ansible.vm.provision "shell", path: "script_curso_ansible_ansible.sh"
      ansible.vm.provider "virtualbox" do |vb|
        vb.name = "ubuntu18_ansible"
      end
    end
  end