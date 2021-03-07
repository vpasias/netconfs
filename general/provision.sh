#!/bin/bash
set -eux

echo "root:gprm8350" | sudo chpasswd
#sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
#sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
#sudo systemctl restart sshd
#sudo rm -rf /root/.ssh/authorized_keys

sudo apt update -y && sudo apt-get install -y git vim net-tools wget curl bash-completion apt-utils gcc

sudo chmod -x /etc/update-motd.d/*

cat << EOF | sudo tee /etc/update-motd.d/01-custom
#!/bin/sh
echo "****************************WARNING****************************************
UNAUTHORISED ACCESS IS PROHIBITED. VIOLATORS WILL BE PROSECUTED.
*********************************************************************************"
EOF

sudo chmod +x /etc/update-motd.d/01-custom

cat << EOF | sudo tee /etc/modprobe.d/qemu-system-x86.conf
options kvm_intel nested=1
EOF

sudo modprobe -r kvm_intel

sudo modprobe kvm_intel nested=1

cat /sys/module/kvm_intel/parameters/nested

sudo modinfo kvm_intel | grep -i nested

sudo mkdir -p /etc/apt/sources.list.d

sudo swapoff -a

sudo apt update -y

# Install docker
#sudo apt-get install apt-transport-https ca-certificates gnupg -y
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
#echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#sudo apt update -y
#sudo apt-get install docker-ce docker-ce-cli containerd.io
#sudo usermod -aG docker vagrant

# Install kustomize
#curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash

#Install Kubelet
#sudo apt-get update && sudo apt-get install -y gnupg2
#curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
#echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
#sudo apt-get update
#sudo apt-get install -y kubectl
#sudo systemctl enable kubelet

#Install kind
#curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.8.1/kind-linux-amd64
#chmod +x ./kind

#Install Go
#wget https://golang.org/dl/go1.14.1.linux-amd64.tar.gz
#tar -C /usr/local -xzf go1.14.1.linux-amd64.tar.gz
#export PATH=$PATH:/usr/local/go/bin
#go version

#Install Airshipit
#git clone https://opendev.org/airship/airshipctl.git && cd airshipctl && ./tools/gate/00_setup.sh
#make build
#make test

sudo lsblk -f
uname -a

#sudo reboot
