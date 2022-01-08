Vagrant.configure("2") do | config |
    config.vm.box = "ubuntu/focal64"
    config.vm.provision "file", source: "keys/id_rsa.pub", destination: "/tmp/"
     

    config.vm.define "ansiblecontrolnode" do | acnconfig |
        acnconfig.vm.network "private_network", ip: "192.168.10.11", virtualbox_intnet: "ansiblenw"
        acnconfig.vm.provider "virtualbox" do | vb |
            vb.name = "Ansible Control Node"
            vb.memory = 2048            
        end                   
        acnconfig.vm.provision "file", source: "keys/id_rsa", destination: "/tmp/"
        acnconfig.vm.provision "install ansible control node", type: "shell", path: "sh/setupcontrolnode.sh"  
    end 
    config.vm.define "node1" do | node1config |
        node1config.vm.network "private_network", ip: "192.168.10.12", virtualbox_intnet: "ansiblenw"
        node1config.vm.provider "virtualbox" do | vb |
            vb.name = "managed node1"
            vb.memory = 1024            
        end                   
        node1config.vm.provision "add ssh user", type: "shell", path: "sh/setupuser.sh"  
    end
    config.vm.define "node2" do | node2config |
        node2config.vm.network "private_network", ip: "192.168.10.13", virtualbox_intnet: "ansiblenw"
        node2config.vm.provider "virtualbox" do | vb |
            vb.name="managed node2"
            vb.memory = 1024
        end
        node2config.vm.provision "add ssh user", type: "shell", path: "sh/setupuser.sh" 
    end
end