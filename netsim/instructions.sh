git clone https://github.com/ipspace/netsim-tools.git
pip install ansible pyyaml jinja2

# Creation of IOSv box
# https://codingpackets.com/blog/cisco-iosv-vagrant-libvirt-box-install/

cd ~ && mkdir -p ~/vagrant/boxes/cisco/iosv && cd ~/vagrant/boxes/cisco/iosv && cp /users/vpasias/vios-adventerprisek9-m.vmdk.SPA.156-1.T . && ls -lah && \
curl -O https://raw.githubusercontent.com/vagrant-libvirt/vagrant-libvirt/master/tools/create_box.sh && \
qemu-img convert -f vmdk -O qcow2 vios-adventerprisek9-m.vmdk.SPA.156-1.T iosv.qcow2

virt-install \
    --connect=qemu:///system \
    --network network=default,model=e1000 \
    --name=iosv \
    --cpu host \
    --arch=x86_64 \
    --machine=pc-1.0 \
    --vcpus=1 \
    --ram=512 \
    --os-type=linux \
    --noacpi \
    --virt-type=kvm \
    --watchdog i6300esb,action=reset \
    --disk path=iosv.qcow2,format=qcow2,device=disk,bus=virtio,cache=writethrough \
    --graphics none \
    --import
    
no
en
conf t

hostname iosv
!
ip domain-name lab.local
!
crypto key generate rsa modulus 2048
ip ssh version 2
!
aaa new-model
!
aaa authentication login default local
aaa authorization exec default local
!
username vagrant privilege 15 secret vagrant
!
ip ssh pubkey-chain
  username vagrant
    key-hash ssh-rsa DD3BB82E850406E9ABFFA80AC0046ED6
!
vrf definition MGMT
 description Management interface
 !
 address-family ipv4
 exit-address-family
!
interface GigabitEthernet0/0
  description vagrant-management
  vrf forwarding MGMT
  ip address dhcp
  duplex auto
  speed auto
  media-type rj45
  no shutdown
!
line vty 0 4
 transport input ssh
!
event manager applet ENABLE-MGMT
 event syslog pattern "SYS-5-RESTART"
 action 0 cli command "enable"
 action 1 cli command "conf t"
 action 2 cli command "crypto key generate rsa modulus 2048"
 action 3 cli command "interface GigabitEthernet0/0"
 action 4 cli command "no shutdown"
 action 5 cli command "exit"
!
end

wr
wr mem

show ip int brie
# IP address: 192.168.121.63 

ssh vagrant@192.168.121.63 -i ~/.vagrant.d/insecure_private_key
exit

virsh destroy iosv

cat << EOF | tee metadata.json
{"provider":"libvirt","format":"qcow2","virtual_size":2}
EOF

bash create_box.sh iosv.qcow2

cat << EOF | tee iosv.json
{
  "name": "cisco/iosv",
  "description": "Cisco IOSv",
  "versions": [
    {
      "version": "15.6-1-T",
      "providers": [
        {
          "name": "libvirt",
          "url": "file:///home/iason/vagrant/boxes/cisco/iosv/iosv.box"
        }
      ]
    }
  ]
}
EOF

vagrant box add iosv.json

vagrant box list

# Testing

mkdir ~/iosv-test && cd ~/iosv-test

nano Vagrantfile

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "rt01" do |node|
    node.vm.box = "cisco/iosv"

    # Turn off shared folders
    node.vm.synced_folder ".", "/vagrant", disabled: true

    # Do not try to insert new SSH key
    node.ssh.insert_key = false

    # Give VM time to boot
    node.vm.boot_timeout = 180

    # Set guest type to prevent guest type detection
    node.vm.guest = :freebsd

    # Provider-specific configuration
    node.vm.provider :libvirt do |domain|
      domain.nic_adapter_count = 8
      domain.memory = 512
      domain.cpus = 1
      domain.driver = "kvm"
      domain.nic_model_type = "e1000"
    end

  end
end

vagrant up

vagrant ssh
exit

vagrant destroy -f

rm -f iosv.qcow2 && virsh undefine iosv
