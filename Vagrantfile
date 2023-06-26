# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "hashicorp/bionic64"

    config.vm.define "tfe" do |tfe|
        tfe.vm.hostname = "tfe"
        tfe.vm.network "private_network", ip: "192.168.56.51"
        tfe.vm.provider "virtualbox" do |v|     
            v.memory = 1024 * 4
            v.cpus = 2  
        end

    end  
 
end