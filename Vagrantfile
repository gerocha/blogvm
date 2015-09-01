# -*- mode: ruby -*-
# vi: set ft=ruby

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.define "blogvm" do |blogvm|
        blogvm.vm.box = "ubuntu/trusty64"
        blogvm.vm.network :private_network, ip: "192.168.33.22"
        blogvm.vm.provision "ansible" do |ansible|
            ansible.playbook = "blog.yml"
            ansible.verbose = "vvvv"
        end
    end

    config.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--memory", "1024"]
    end
end
