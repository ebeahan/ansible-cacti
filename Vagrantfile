# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

    config.vm.define "cacti" do |cacti|
        cacti.vm.box = "nrel/CentOS-6.5-x86_64"
        cacti.vm.hostname = "cacti"
        cacti.vm.network "private_network", ip: "192.168.33.50"
    end

  # Ansible provisioner.
    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "site.yml"
        ansible.inventory_path = "hosts"
        ansible.sudo = true
        ansible.limit = "all"
    end
end
