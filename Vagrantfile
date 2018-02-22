# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = '2'
box = "centos/7"

Vagrant.configure("2") do |config|

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.ssh.forward_agent = false
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |vb|
    config.vbguest.no_remote = true
    config.vbguest.auto_update = false
  end
  config.vm.provider :libvirt do |libvirt|
    libvirt.storage_pool_name="habibiz-cluster"
    libvirt.uri="qemu:///system"
  end
  config.vm.define :master1 do |node|
    node.vm.box = box
    node.vm.hostname = "master1.habibiz"
    node.vm.network :private_network, ip: "10.10.10.11"
    node.vm.network :forwarded_port, guest: 22, host: 24011, auto_correct: true
    node.vm.provider "virtualbox" do |d|
      d.name = node.vm.hostname
      d.customize ["modifyvm", :id, "--memory", 14336]
      d.customize ["modifyvm", :id, "--cpus", 1]
      d.memory = 7168
    end
    node.vm.provider "libvirt" do |d|
      d.memory = 1536
      d.graphics_port = 5911
    end
  end
  config.vm.define :master2 do |node|
    node.vm.box = box
    node.vm.hostname = "master2.habibiz"
    node.vm.network :private_network, ip: "10.10.10.12"
    node.vm.network :forwarded_port, guest: 22, host: 24012, auto_correct: true
    node.vm.provider "virtualbox" do |d|
      d.name = node.vm.hostname
      # d.customize ["modifyvm", :id, "--cpus", 2]
      d.memory = 4096
    end
    node.vm.provider "libvirt" do |d|
      d.memory = 2048
      d.graphics_port = 5912
    end
  end
  config.vm.define :master3 do |node|
    node.vm.box = box
    node.vm.hostname = "master3.habibiz"
    node.vm.network :private_network, ip: "10.10.10.13"
    node.vm.network :forwarded_port, guest: 22, host: 24013, auto_correct: true
    node.vm.provider "virtualbox" do |d|
      d.name = node.vm.hostname
      d.memory = 1792
    end
    node.vm.provider "libvirt" do |d|
      d.memory = 2048
      d.graphics_port = 5913
    end
  end
  config.vm.define :front1 do |node|
    node.vm.box = box
    node.vm.hostname = "front1.habibiz"
    node.vm.network :private_network, ip: "10.10.10.15"
    node.vm.network :forwarded_port, guest: 22, host: 24014, auto_correct: true
    node.vm.provider "virtualbox" do |d|
      d.name = node.vm.hostname
      d.customize ["modifyvm", :id, "--cpus", 1]
      d.memory = 7168
    end
    node.vm.provider "libvirt" do |d|
      d.memory = 7168
      d.graphics_port = 5914
    end
  end
  config.vm.define :worker1 do |node|
    node.vm.box = box
    node.vm.hostname = "worker1.habibiz"
    node.vm.network :private_network, ip: "10.10.10.16"
    node.vm.network :forwarded_port, guest: 22, host: 24015, auto_correct: true
    node.vm.provider "virtualbox" do |d|
      d.name = node.vm.hostname
      d.customize ["modifyvm", :id, "--memory", 4096]
      # d.customize ["modifyvm", :id, "--cpus", 3]
      d.customize ["modifyvm", :id, "--ioapic", "on"]
    end
    node.vm.provider "libvirt" do |d|
      d.memory = 1792
      d.cpus = 1
      d.graphics_port = 5916
    end
  end
  config.vm.define :worker2 do |node|
    node.vm.box = box
    node.vm.hostname = "worker2.habibiz"
    node.vm.network :private_network, ip: "10.10.10.17"
    node.vm.network :forwarded_port, guest: 22, host: 24016, auto_correct: true
    node.vm.provider "virtualbox" do |d|
      d.name = node.vm.hostname
      d.customize ["modifyvm", :id, "--memory", 1792]
      # d.customize ["modifyvm", :id, "--cpus", 3]
      d.customize ["modifyvm", :id, "--ioapic", "on"]
    end
    node.vm.provider "libvirt" do |d|
      d.memory = 2048
      d.cpus = 1
      d.graphics_port = 5917
    end
  end
  config.vm.define :worker3 do |node|
    node.vm.box = box
    node.vm.hostname = "worker3.habibiz"
    node.vm.network :private_network, ip: "10.10.10.18"
    node.vm.network :forwarded_port, guest: 22, host: 24017, auto_correct: true
    node.vm.provider "virtualbox" do |d|
      d.name = node.vm.hostname
      d.customize ["modifyvm", :id, "--memory", 1792]
      # d.customize ["modifyvm", :id, "--cpus", 3]
      d.customize ["modifyvm", :id, "--ioapic", "on"]
    end
    node.vm.provider "libvirt" do |d|
      d.memory = 2048
      d.cpus = 1
      d.graphics_port = 5918
    end
  end
end
