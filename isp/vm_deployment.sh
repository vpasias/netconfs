#!/bin/bash
#
HOME=/mnt/extra/

cat > /mnt/extra/managementn1.xml <<EOF
<network>
  <name>managementn1</name>
  <forward mode='nat'/>
  <bridge name='virbr101' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.1' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.2' end='192.168.254.6'/>
      <host mac='52:54:00:8a:8b:c1' name='n1' ip='192.168.254.3'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn2.xml <<EOF
<network>
  <name>managementn2</name>
  <forward mode='nat'/>
  <bridge name='virbr102' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.9' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.10' end='192.168.254.14'/>
      <host mac='52:54:00:8a:8b:c2' name='n2' ip='192.168.254.11'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn3.xml <<EOF
<network>
  <name>managementn3</name>
  <forward mode='nat'/>
  <bridge name='virbr103' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.17' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.18' end='192.168.254.22'/>
      <host mac='52:54:00:8a:8b:c3' name='n3' ip='192.168.254.19'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn4.xml <<EOF
<network>
  <name>managementn4</name>
  <forward mode='nat'/>
  <bridge name='virbr104' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.25' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.26' end='192.168.254.30'/>
      <host mac='52:54:00:8a:8b:c4' name='n4' ip='192.168.254.27'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn5.xml <<EOF
<network>
  <name>managementn5</name>
  <forward mode='nat'/>
  <bridge name='virbr105' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.33' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.34' end='192.168.254.38'/>
      <host mac='52:54:00:8a:8b:c5' name='n5' ip='192.168.254.35'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn6.xml <<EOF
<network>
  <name>managementn6</name>
  <forward mode='nat'/>
  <bridge name='virbr106' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.41' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.42' end='192.168.254.46'/>
      <host mac='52:54:00:8a:8b:c6' name='n6' ip='192.168.254.43'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn7.xml <<EOF
<network>
  <name>managementn7</name>
  <forward mode='nat'/>
  <bridge name='virbr107' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.49' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.50' end='192.168.254.54'/>
      <host mac='52:54:00:8a:8b:c7' name='n7' ip='192.168.254.51'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn8.xml <<EOF
<network>
  <name>managementn8</name>
  <forward mode='nat'/>
  <bridge name='virbr108' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.57' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.58' end='192.168.254.62'/>
      <host mac='52:54:00:8a:8b:c8' name='n8' ip='192.168.254.59'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn9.xml <<EOF
<network>
  <name>managementn9</name>
  <forward mode='nat'/>
  <bridge name='virbr109' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.65' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.66' end='192.168.254.70'/>
      <host mac='52:54:00:8a:8b:c9' name='n9' ip='192.168.254.67'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn10.xml <<EOF
<network>
  <name>managementn10</name>
  <forward mode='nat'/>
  <bridge name='virbr110' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.73' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.74' end='192.168.254.78'/>
      <host mac='52:54:00:8a:8b:ca' name='n10' ip='192.168.254.75'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn11.xml <<EOF
<network>
  <name>managementn11</name>
  <forward mode='nat'/>
  <bridge name='virbr111' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.81' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.82' end='192.168.254.86'/>
      <host mac='52:54:00:8a:8b:cb' name='n11' ip='192.168.254.83'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn12.xml <<EOF
<network>
  <name>managementn12</name>
  <forward mode='nat'/>
  <bridge name='virbr112' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.89' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.90' end='192.168.254.94'/>
      <host mac='52:54:00:8a:8b:cc' name='n12' ip='192.168.254.91'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn13.xml <<EOF
<network>
  <name>managementn13</name>
  <forward mode='nat'/>
  <bridge name='virbr113' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.97' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.98' end='192.168.254.102'/>
      <host mac='52:54:00:8a:8b:d1' name='n13' ip='192.168.254.99'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/managementn14.xml <<EOF
<network>
  <name>managementn14</name>
  <forward mode='nat'/>
  <bridge name='virbr114' stp='off' macTableManager="kernel"/>
  <mtu size="9216"/>
  <ip address='192.168.254.105' netmask='255.255.255.248'>
    <dhcp>
      <range start='192.168.254.106' end='192.168.254.110'/>
      <host mac='52:54:00:8a:8b:d2' name='n14' ip='192.168.254.107'/>
    </dhcp>
  </ip>
</network>
EOF

cat > /mnt/extra/n1n3.xml <<EOF
<network>
  <name>n1n3</name>
  <bridge name="virbr201" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n1n4.xml <<EOF
<network>
  <name>n1n4</name>
  <bridge name="virbr202" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n2n3.xml <<EOF
<network>
  <name>n2n3</name>
  <bridge name="virbr203" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n2n4.xml <<EOF
<network>
  <name>n2n4</name>
  <bridge name="virbr204" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n5n3.xml <<EOF
<network>
  <name>n5n3</name>
  <bridge name="virbr205" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n5n4.xml <<EOF
<network>
  <name>n5n4</name>
  <bridge name="virbr206" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n6n3.xml <<EOF
<network>
  <name>n6n3</name>
  <bridge name="virbr207" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n6n4.xml <<EOF
<network>
  <name>n6n4</name>
  <bridge name="virbr208" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n3n4.xml <<EOF
<network>
  <name>n3n4</name>
  <bridge name="virbr209" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n1n7.xml <<EOF
<network>
  <name>n1n7</name>
  <bridge name="virbr210" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n1n9.xml <<EOF
<network>
  <name>n1n9</name>
  <bridge name="virbr211" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n5n7.xml <<EOF
<network>
  <name>n5n7</name>
  <bridge name="virbr212" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n5n9.xml <<EOF
<network>
  <name>n5n9</name>
  <bridge name="virbr213" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n2n8.xml <<EOF
<network>
  <name>n2n8</name>
  <bridge name="virbr214" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n6n8.xml <<EOF
<network>
  <name>n6n8</name>
  <bridge name="virbr215" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n2n10.xml <<EOF
<network>
  <name>n2n10</name>
  <bridge name="virbr216" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n6n10.xml <<EOF
<network>
  <name>n6n10</name>
  <bridge name="virbr217" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n1n5.xml <<EOF
<network>
  <name>n1n5</name>
  <bridge name="virbr218" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n2n6.xml <<EOF
<network>
  <name>n2n6</name>
  <bridge name="virbr219" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n7n11.xml <<EOF
<network>
  <name>n7n11</name>
  <bridge name="virbr220" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n9n13.xml <<EOF
<network>
  <name>n9n13</name>
  <bridge name="virbr221" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n8n12.xml <<EOF
<network>
  <name>n8n12</name>
  <bridge name="virbr222" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

cat > /mnt/extra/n10n14.xml <<EOF
<network>
  <name>n10n14</name>
  <bridge name="virbr223" stp='off' macTableManager="kernel"/>
  <mtu size="9216"/> 
</network>
EOF

virsh net-define /mnt/extra/managementn1.xml && virsh net-autostart managementn1 && virsh net-start managementn1
virsh net-define /mnt/extra/managementn2.xml && virsh net-autostart managementn2 && virsh net-start managementn2
virsh net-define /mnt/extra/managementn3.xml && virsh net-autostart managementn3 && virsh net-start managementn3
virsh net-define /mnt/extra/managementn4.xml && virsh net-autostart managementn4 && virsh net-start managementn4
virsh net-define /mnt/extra/managementn5.xml && virsh net-autostart managementn5 && virsh net-start managementn5
virsh net-define /mnt/extra/managementn6.xml && virsh net-autostart managementn6 && virsh net-start managementn6
virsh net-define /mnt/extra/managementn7.xml && virsh net-autostart managementn7 && virsh net-start managementn7
virsh net-define /mnt/extra/managementn8.xml && virsh net-autostart managementn8 && virsh net-start managementn8
virsh net-define /mnt/extra/managementn9.xml && virsh net-autostart managementn9 && virsh net-start managementn9
virsh net-define /mnt/extra/managementn10.xml && virsh net-autostart managementn10 && virsh net-start managementn10
virsh net-define /mnt/extra/managementn11.xml && virsh net-autostart managementn11 && virsh net-start managementn11
virsh net-define /mnt/extra/managementn12.xml && virsh net-autostart managementn12 && virsh net-start managementn12
virsh net-define /mnt/extra/managementn13.xml && virsh net-autostart managementn13 && virsh net-start managementn13
virsh net-define /mnt/extra/managementn14.xml && virsh net-autostart managementn14 && virsh net-start managementn14

virsh net-define /mnt/extra/n1n3.xml && virsh net-autostart n1n3 && virsh net-start n1n3
virsh net-define /mnt/extra/n1n4.xml && virsh net-autostart n1n4 && virsh net-start n1n4

virsh net-define /mnt/extra/n2n3.xml && virsh net-autostart n2n3 && virsh net-start n2n3
virsh net-define /mnt/extra/n2n4.xml && virsh net-autostart n2n4 && virsh net-start n2n4

virsh net-define /mnt/extra/n5n3.xml && virsh net-autostart n5n3 && virsh net-start n5n3
virsh net-define /mnt/extra/n5n4.xml && virsh net-autostart n5n4 && virsh net-start n5n4

virsh net-define /mnt/extra/n6n3.xml && virsh net-autostart n6n3 && virsh net-start n6n3
virsh net-define /mnt/extra/n6n4.xml && virsh net-autostart n6n4 && virsh net-start n6n4

virsh net-define /mnt/extra/n3n4.xml && virsh net-autostart n3n4 && virsh net-start n3n4

virsh net-define /mnt/extra/n1n7.xml && virsh net-autostart n1n7 && virsh net-start n1n7
virsh net-define /mnt/extra/n1n9.xml && virsh net-autostart n1n9 && virsh net-start n1n9

virsh net-define /mnt/extra/n5n7.xml && virsh net-autostart n5n7 && virsh net-start n5n7
virsh net-define /mnt/extra/n5n9.xml && virsh net-autostart n5n9 && virsh net-start n5n9

virsh net-define /mnt/extra/n2n8.xml && virsh net-autostart n2n8 && virsh net-start n2n8
virsh net-define /mnt/extra/n6n8.xml && virsh net-autostart n6n8 && virsh net-start n6n8

virsh net-define /mnt/extra/n2n10.xml && virsh net-autostart n2n10 && virsh net-start n2n10
virsh net-define /mnt/extra/n6n10.xml && virsh net-autostart n6n10 && virsh net-start n6n10

virsh net-define /mnt/extra/n1n5.xml && virsh net-autostart n1n5 && virsh net-start n1n5
virsh net-define /mnt/extra/n2n6.xml && virsh net-autostart n2n6 && virsh net-start n2n6

virsh net-define /mnt/extra/n7n11.xml && virsh net-autostart n7n11 && virsh net-start n7n11
virsh net-define /mnt/extra/n9n13.xml && virsh net-autostart n9n13 && virsh net-start n9n13

virsh net-define /mnt/extra/n8n12.xml && virsh net-autostart n8n12 && virsh net-start n8n12
virsh net-define /mnt/extra/n10n14.xml && virsh net-autostart n10n14 && virsh net-start n10n14

ip a && sudo virsh net-list --all

sleep 20

# Node 1 - core router 1 (P)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr101 -T US/Eastern -M 52:54:00:8a:8b:c1 n1

#  Node 2 - core router 2 (P)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr102 -T US/Eastern -M 52:54:00:8a:8b:c2 n2

# Node 3 - core router 3 (P)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr103 -T US/Eastern -M 52:54:00:8a:8b:c3 n3

# Node 4 - core router 4 (P)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr104 -T US/Eastern -M 52:54:00:8a:8b:c4 n4

# Node 5 - core router 5 (P)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr105 -T US/Eastern -M 52:54:00:8a:8b:c5 n5

#  Node 6 - core router 6 (P)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr106 -T US/Eastern -M 52:54:00:8a:8b:c6 n6

# Node 7 - edge router 1 (PE)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr107 -T US/Eastern -M 52:54:00:8a:8b:c7 n7

# Node 8 - edge router 2 (PE)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr108 -T US/Eastern -M 52:54:00:8a:8b:c8 n8

# Node 9 - edge router 3 (PE)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr109 -T US/Eastern -M 52:54:00:8a:8b:c9 n9

# Node 10 - edge router 4 (PE)
./kvm-install-vm create -c 2 -m 4096 -d 80 -t ubuntu1804 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr110 -T US/Eastern -M 52:54:00:8a:8b:ca n10

# Node 11 - CPE router 1 (CPE)
./kvm-install-vm create -c 4 -m 16384 -d 120 -t ubuntu2004 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr111 -T US/Eastern -M 52:54:00:8a:8b:cb n11

# Node 12 - CPE router 2 (CPE)
./kvm-install-vm create -c 4 -m 16384 -d 120 -t ubuntu2004 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr112 -T US/Eastern -M 52:54:00:8a:8b:cc n12

# Node 13 - CPE router 3 (CPE)
./kvm-install-vm create -c 4 -m 16384 -d 120 -t ubuntu2004 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr113 -T US/Eastern -M 52:54:00:8a:8b:d1 n13

# Node 14 - CPE router 4 (CPE)
./kvm-install-vm create -c 4 -m 16384 -d 120 -t ubuntu2004 -f host-passthrough -k /root/.ssh/id_rsa.pub -l /mnt/extra/virt/images -L /mnt/extra/virt/vms -b virbr114 -T US/Eastern -M 52:54:00:8a:8b:d2 n14

virsh list --all && brctl show && virsh net-list --all

sleep 10

################################################################################################################################################################
# Start of Phase 1
################################################################################################################################################################

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/g' /etc/default/grub"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo grub-mkconfig -o /boot/grub/grub.cfg"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "cat << EOF | sudo tee /lib/systemd/system/ttyS0.service
[Unit]
Description=Serial Console Service

[Service]
ExecStart=/sbin/getty -L 115200 ttyS0 vt102
Restart=always

[Install]
WantedBy=multi-user.target
EOF"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo systemctl daemon-reload"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo systemctl enable ttyS0"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo systemctl start ttyS0"; done

for i in {1..14}; do virsh shutdown n$i; done && sleep 10 && virsh list --all && for i in {1..14}; do virsh start n$i; done && sleep 10 && virsh list --all

sleep 30

for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i 'echo "root:gprm8350" | sudo chpasswd'; done
for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i 'echo "ubuntu:kyax7344" | sudo chpasswd'; done
for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config"; done
for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config"; done
for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo systemctl restart sshd"; done
for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo rm -rf /root/.ssh/authorized_keys"; done

for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo hostnamectl set-hostname n$i --static"; done

for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo apt update -y && sudo apt-get install -y git vim net-tools wget curl bash-completion apt-utils p7zip-full p7zip-rar"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo chmod -x /etc/update-motd.d/*"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i 'cat << EOF | sudo tee /etc/update-motd.d/01-custom
#!/bin/sh
echo "****************************WARNING****************************************
UNAUTHORISED ACCESS IS PROHIBITED. VIOLATORS WILL BE PROSECUTED.
*********************************************************************************"
EOF'; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo chmod +x /etc/update-motd.d/01-custom"; done

for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "cat << EOF | sudo tee /etc/modprobe.d/qemu-system-x86.conf
options kvm_intel nested=1
EOF"; done

for i in {1..6}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "cat << EOF | sudo tee /etc/sysctl.conf
net.ipv4.ip_forward=1
net.ipv4.conf.all.forwarding=1
net.ipv6.conf.all.forwarding=1
net.mpls.conf.lo.input=1
net.mpls.conf.vpp0.input=1
net.mpls.conf.vpp1.input=1
net.mpls.conf.vpp2.input=1
net.mpls.conf.vpp3.input=1
net.mpls.conf.vpp4.input=1
net.mpls.platform_labels=100000
EOF"; done

for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "cat << EOF | sudo tee /etc/sysctl.conf
net.ipv4.ip_forward=1
net.ipv4.conf.all.forwarding=1
net.ipv6.conf.all.forwarding=1
net.ipv4.tcp_l3mdev_accept=1
net.ipv4.udp_l3mdev_accept=1
net.mpls.conf.lo.input=1
net.mpls.conf.vpp0.input=1
net.mpls.conf.vpp1.input=1
net.mpls.platform_labels=100000
EOF"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "cat << EOF | sudo tee /etc/modules-load.d/modules.conf
# /etc/modules: kernel modules to load at boot time.
#
# This file contains the names of kernel modules that should be loaded
# at boot time, one per line. Lines beginning with # are ignored.
mpls_router
mpls_gso
mpls_iptunnel
EOF"; done

for i in {1..14}; do virsh shutdown n$i; done && sleep 10 && virsh list --all && for i in {1..14}; do virsh start n$i; done && sleep 10 && virsh list --all

sleep 30

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-generic-hwe-18.04 --install-recommends -y"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo apt autoremove -y && sudo apt --fix-broken install -y"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo mkdir -p /etc/systemd/system/networking.service.d"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "cat << EOF | sudo tee /etc/systemd/system/networking.service.d/reduce-timeout.conf
[Service]
TimeoutStartSec=15
EOF"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo apt update -y"; done

for i in {1..14}; do virsh shutdown n$i; done && sleep 10 && virsh list --all && for i in {1..14}; do virsh start n$i; done && sleep 10 && virsh list --all

sleep 30

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo mkdir -p /etc/network/interfaces.d"; done

ssh -o "StrictHostKeyChecking=no" ubuntu@n1 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 1.1.1.1/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n2 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 2.2.2.2/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n3 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 3.3.3.3/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n4 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 4.4.4.4/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n5 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 5.5.5.5/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n6 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 6.6.6.6/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n7 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 7.7.7.7/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n8 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 8.8.8.8/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n9 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 9.9.9.9/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n10 "cat << EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
    address 10.10.10.10/32

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
    mtu 9000

source /etc/network/interfaces.d/*.cfg
EOF"

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo apt install ifupdown2 -y && sudo apt remove netplan.io libnetplan0 -y && sudo rm -rf /etc/netplan/*.yml"; done

for i in {1..14}; do virsh shutdown n$i; done && sleep 10 && virsh list --all && for i in {1..14}; do virsh start n$i; done && sleep 10 && virsh list --all

sleep 60

ssh -o "StrictHostKeyChecking=no" ubuntu@n1 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.13.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n1 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.14.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n1 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp2.cfg
allow-hotplug vpp2
auto vpp2
iface vpp2 inet static
    address 10.255.17.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n1 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp3.cfg
allow-hotplug vpp3
auto vpp3
iface vpp3 inet static
    address 10.255.19.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n1 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp4.cfg
allow-hotplug vpp4
auto vpp4
iface vpp4 inet static
    address 10.255.15.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n2 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.23.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n2 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.24.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n2 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp2.cfg
allow-hotplug vpp2
auto vpp2
iface vpp2 inet static
    address 10.255.28.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n2 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp3.cfg
allow-hotplug vpp3
auto vpp3
iface vpp3 inet static
    address 10.255.20.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n2 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp4.cfg
allow-hotplug vpp4
auto vpp4
iface vpp4 inet static
    address 10.255.26.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n3 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.13.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n3 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.23.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n3 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp2.cfg
allow-hotplug vpp2
auto vpp2
iface vpp2 inet static
    address 10.255.35.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n3 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp3.cfg
allow-hotplug vpp3
auto vpp3
iface vpp3 inet static
    address 10.255.36.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n3 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp4.cfg
allow-hotplug vpp4
auto vpp4
iface vpp4 inet static
    address 10.255.34.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n4 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.14.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n4 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.24.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n4 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp2.cfg
allow-hotplug vpp2
auto vpp2
iface vpp2 inet static
    address 10.255.45.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n4 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp3.cfg
allow-hotplug vpp3
auto vpp3
iface vpp3 inet static
    address 10.255.46.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n4 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp4.cfg
allow-hotplug vpp4
auto vpp4
iface vpp4 inet static
    address 10.255.34.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n5 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.35.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n5 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.45.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n5 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp2.cfg
allow-hotplug vpp2
auto vpp2
iface vpp2 inet static
    address 10.255.57.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n5 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp3.cfg
allow-hotplug vpp3
auto vpp3
iface vpp3 inet static
    address 10.255.59.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n5 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp4.cfg
allow-hotplug vpp4
auto vpp4
iface vpp4 inet static
    address 10.255.15.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n6 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.36.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n6 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.46.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n6 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp2.cfg
allow-hotplug vpp2
auto vpp2
iface vpp2 inet static
    address 10.255.68.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n6 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp3.cfg
allow-hotplug vpp3
auto vpp3
iface vpp3 inet static
    address 10.255.60.1/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n6 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp4.cfg
allow-hotplug vpp4
auto vpp4
iface vpp4 inet static
    address 10.255.26.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n7 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.17.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n7 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.57.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n8 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.28.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n8 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.68.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n9 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.19.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n9 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.59.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n10 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp0.cfg
allow-hotplug vpp0
auto vpp0
iface vpp0 inet static
    address 10.255.20.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n10 "cat << EOF | sudo tee /etc/network/interfaces.d/vpp1.cfg
allow-hotplug vpp1
auto vpp1
iface vpp1 inet static
    address 10.255.60.2/24
    mtu 9000
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n7 "cat << EOF | sudo tee /etc/network/interfaces.d/vrf_red.cfg
auto iface red
iface red
    address 127.0.0.1/8
    vrf-table 1001

auto vxlan1001
iface vxlan1001
    vxlan-id 1001
    vxlan-local-tunnelip 7.7.7.7
    bridge-learning off
    bridge-arp-nd-suppress on
    mtu 1550

auto br1001
iface br1001
    vrf red
    bridge_ports vxlan1001
    bridge_stp off
    bridge_fd 0
    mtu 1550

auto lo1001
iface lo1001 inet loopback
    vrf red
    address 1.0.0.1/32
    pre-up ip link add name lo1001 type dummy
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n7 "cat << EOF | sudo tee /etc/network/interfaces.d/vrf_blue.cfg
auto iface blue
iface blue
   address 127.0.0.1/8
    vrf-table 1002

auto vxlan1002
iface vxlan1002
    vxlan-id 1002
    vxlan-local-tunnelip 7.7.7.7
    bridge-learning off
    bridge-arp-nd-suppress on
    mtu 1550

auto br1002
iface br1002
    vrf blue
    bridge_ports vxlan1002
    bridge_stp off
    bridge_fd 0
    mtu 1550

auto lo1002
iface lo1002 inet loopback
    vrf blue
    address 2.0.0.1/32
    pre-up ip link add name lo1002 type dummy
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n9 "cat << EOF | sudo tee /etc/network/interfaces.d/vrf_red.cfg
auto iface red
iface red
    address 127.0.0.1/8
    vrf-table 1001

auto vxlan1001
iface vxlan1001
    vxlan-id 1001
    vxlan-local-tunnelip 9.9.9.9
    bridge-learning off
    bridge-arp-nd-suppress on
    mtu 1550

auto br1001
iface br1001
    vrf red
    bridge_ports vxlan1001
    bridge_stp off
    bridge_fd 0
    mtu 1550

auto lo1001
iface lo1001 inet loopback
    vrf red
    address 1.0.0.2/32
    pre-up ip link add name lo1001 type dummy
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n9 "cat << EOF | sudo tee /etc/network/interfaces.d/vrf_blue.cfg
auto iface blue
iface blue
    address 127.0.0.1/8
    vrf-table 1002

auto vxlan1002
iface vxlan1002
    vxlan-id 1002
    vxlan-local-tunnelip 9.9.9.9
    bridge-learning off
    bridge-arp-nd-suppress on
    mtu 1550

auto br1002
iface br1002
    vrf blue
    bridge_ports vxlan1002
    bridge_stp off
    bridge_fd 0
    mtu 1550

auto lo1002
iface lo1002 inet loopback
    vrf blue
    address 2.0.0.2/32
    pre-up ip link add name lo1002 type dummy
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n8 "cat << EOF | sudo tee /etc/network/interfaces.d/vrf_red.cfg
auto iface red
iface red
    address 127.0.0.1/8
    vrf-table 1001

auto vxlan1001
iface vxlan1001
    vxlan-id 1001
    vxlan-local-tunnelip 8.8.8.8
    bridge-learning off
    bridge-arp-nd-suppress on
    mtu 1550

auto br1001
iface br1001
    vrf red
    bridge_ports vxlan1001
    bridge_stp off
    bridge_fd 0
    mtu 1550

auto lo1001
iface lo1001 inet loopback
    vrf red
    address 1.0.0.3/32
    pre-up ip link add name lo1001 type dummy
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n8 "cat << EOF | sudo tee /etc/network/interfaces.d/vrf_blue.cfg
auto iface blue
iface blue
   address 127.0.0.1/8
    vrf-table 1002

auto vxlan1002
iface vxlan1002
    vxlan-id 1002
    vxlan-local-tunnelip 8.8.8.8
    bridge-learning off
    bridge-arp-nd-suppress on
    mtu 1550

auto br1002
iface br1002
    vrf blue
    bridge_ports vxlan1002
    bridge_stp off
    bridge_fd 0
    mtu 1550

auto lo1002
iface lo1002 inet loopback
    vrf blue
    address 2.0.0.3/32
    pre-up ip link add name lo1002 type dummy
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n10 "cat << EOF | sudo tee /etc/network/interfaces.d/vrf_red.cfg
auto iface red
iface red
    address 127.0.0.1/8
    vrf-table 1001

auto vxlan1001
iface vxlan1001
    vxlan-id 1001
    vxlan-local-tunnelip 10.10.10.10
    bridge-learning off
    bridge-arp-nd-suppress on
    mtu 1550

auto br1001
iface br1001
    vrf red
    bridge_ports vxlan1001
    bridge_stp off
    bridge_fd 0
    mtu 1550

auto lo1001
iface lo1001 inet loopback
    vrf red
    address 1.0.0.4/32
    pre-up ip link add name lo1001 type dummy
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n10 "cat << EOF | sudo tee /etc/network/interfaces.d/vrf_blue.cfg
auto iface blue
iface blue
    address 127.0.0.1/8
    vrf-table 1002

auto vxlan1002
iface vxlan1002
    vxlan-id 1002
    vxlan-local-tunnelip 10.10.10.10
    bridge-learning off
    bridge-arp-nd-suppress on
    mtu 1550

auto br1002
iface br1002
    vrf blue
    bridge_ports vxlan1002
    bridge_stp off
    bridge_fd 0
    mtu 1550

auto lo1002
iface lo1002 inet loopback
    vrf blue
    address 2.0.0.4/32
    pre-up ip link add name lo1002 type dummy
EOF"

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "curl -sL https://deb.flexiwan.com/setup | sudo -E bash -"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo apt-get install -y flexiwan-router"; done
#for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo fwkill && sudo systemctl disable flexiwan-router"; done

#for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "git clone https://github.com/vpasias/vpp.git && cd vpp && 7z e vpp-dbg_21.01-rc2~12-gcc32f89fe_amd64.7z && sudo apt-get install python3-cffi python3-pycparser -y && sudo dpkg -i *.deb"; done

for i in {1..14}; do virsh shutdown n$i; done && sleep 10 && virsh list --all && for i in {1..14}; do virsh start n$i; done && sleep 10 && virsh list --all

sleep 60

#################################################################################################################################################################
# End of Phase 1
#################################################################################################################################################################

virsh attach-interface --domain n1 --type network --source n1n3 --model e1000 --mac 02:00:aa:01:11:02 --config --live
virsh attach-interface --domain n3 --type network --source n1n3 --model e1000 --mac 02:00:aa:01:21:02 --config --live

virsh attach-interface --domain n1 --type network --source n1n4 --model e1000 --mac 02:00:aa:01:31:02 --config --live
virsh attach-interface --domain n4 --type network --source n1n4 --model e1000 --mac 02:00:aa:01:41:02 --config --live

virsh attach-interface --domain n2 --type network --source n2n3 --model e1000 --mac 02:00:aa:01:12:02 --config --live
virsh attach-interface --domain n3 --type network --source n2n3 --model e1000 --mac 02:00:aa:01:22:02 --config --live

virsh attach-interface --domain n2 --type network --source n2n4 --model e1000 --mac 02:00:aa:01:32:02 --config --live
virsh attach-interface --domain n4 --type network --source n2n4 --model e1000 --mac 02:00:aa:01:42:02 --config --live

virsh attach-interface --domain n5 --type network --source n5n3 --model e1000 --mac 02:00:aa:01:11:03 --config --live
virsh attach-interface --domain n3 --type network --source n5n3 --model e1000 --mac 02:00:aa:01:21:03 --config --live

virsh attach-interface --domain n5 --type network --source n5n4 --model e1000 --mac 02:00:aa:01:31:03 --config --live
virsh attach-interface --domain n4 --type network --source n5n4 --model e1000 --mac 02:00:aa:01:41:03 --config --live

virsh attach-interface --domain n6 --type network --source n6n3 --model e1000 --mac 02:00:aa:01:12:03 --config --live
virsh attach-interface --domain n3 --type network --source n6n3 --model e1000 --mac 02:00:aa:01:22:03 --config --live

virsh attach-interface --domain n6 --type network --source n6n4 --model e1000 --mac 02:00:aa:01:32:03 --config --live
virsh attach-interface --domain n4 --type network --source n6n4 --model e1000 --mac 02:00:aa:01:42:03 --config --live

virsh attach-interface --domain n3 --type network --source n3n4 --model e1000 --mac 02:00:aa:01:34:02 --config --live
virsh attach-interface --domain n4 --type network --source n3n4 --model e1000 --mac 02:00:aa:01:44:02 --config --live

virsh attach-interface --domain n1 --type network --source n1n7 --model e1000 --mac 02:00:aa:01:dd:44 --config --live
virsh attach-interface --domain n7 --type network --source n1n7 --model e1000 --mac 02:00:aa:01:17:04 --config --live

virsh attach-interface --domain n1 --type network --source n1n9 --model e1000 --mac 02:00:aa:01:dd:12 --config --live
virsh attach-interface --domain n9 --type network --source n1n9 --model e1000 --mac 02:00:aa:01:dd:13 --config --live

virsh attach-interface --domain n5 --type network --source n5n7 --model e1000 --mac 02:00:aa:01:dd:54 --config --live
virsh attach-interface --domain n7 --type network --source n5n7 --model e1000 --mac 02:00:aa:01:17:14 --config --live

virsh attach-interface --domain n5 --type network --source n5n9 --model e1000 --mac 02:00:aa:01:dd:64 --config --live
virsh attach-interface --domain n9 --type network --source n5n9 --model e1000 --mac 02:00:aa:01:17:24 --config --live

virsh attach-interface --domain n1 --type network --source n1n5 --model e1000 --mac 02:00:aa:01:dd:61 --config --live
virsh attach-interface --domain n5 --type network --source n1n5 --model e1000 --mac 02:00:aa:01:17:61 --config --live

virsh attach-interface --domain n2 --type network --source n2n8 --model e1000 --mac 02:00:aa:01:dd:45 --config --live
virsh attach-interface --domain n8 --type network --source n2n8 --model e1000 --mac 02:00:aa:01:18:05 --config --live

virsh attach-interface --domain n2 --type network --source n2n10 --model e1000 --mac 02:00:aa:01:dd:46 --config --live
virsh attach-interface --domain n10 --type network --source n2n10 --model e1000 --mac 02:00:aa:01:18:06 --config --live

virsh attach-interface --domain n6 --type network --source n6n8 --model e1000 --mac 02:00:aa:01:dd:57 --config --live
virsh attach-interface --domain n8 --type network --source n6n8 --model e1000 --mac 02:00:aa:01:18:17 --config --live

virsh attach-interface --domain n6 --type network --source n6n10 --model e1000 --mac 02:00:aa:01:dd:55 --config --live
virsh attach-interface --domain n10 --type network --source n6n10 --model e1000 --mac 02:00:aa:01:18:15 --config --live

virsh attach-interface --domain n2 --type network --source n2n6 --model e1000 --mac 02:00:aa:01:dd:43 --config --live
virsh attach-interface --domain n6 --type network --source n2n6 --model e1000 --mac 02:00:aa:01:16:03 --config --live

virsh attach-interface --domain n7 --type network --source n7n11 --model e1000 --mac 02:00:aa:01:dd:77 --config --live
virsh attach-interface --domain n11 --type network --source n7n11 --model e1000 --mac 02:00:aa:01:17:77 --config --live

virsh attach-interface --domain n9 --type network --source n9n13 --model e1000 --mac 02:00:aa:01:dd:59 --config --live
virsh attach-interface --domain n13 --type network --source n9n13 --model e1000 --mac 02:00:aa:01:17:19 --config --live

virsh attach-interface --domain n8 --type network --source n8n12 --model e1000 --mac 02:00:aa:01:dd:58 --config --live
virsh attach-interface --domain n12 --type network --source n8n12 --model e1000 --mac 02:00:aa:01:18:18 --config --live

virsh attach-interface --domain n10 --type network --source n10n14 --model e1000 --mac 02:00:aa:01:dd:68 --config --live
virsh attach-interface --domain n14 --type network --source n10n14 --model e1000 --mac 02:00:aa:01:18:68 --config --live

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo apt-get purge -y frr frr-pythontools"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "curl -s https://deb.frrouting.org/frr/keys.asc | sudo apt-key add -"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "echo deb https://deb.frrouting.org/frr bionic frr-stable | sudo tee -a /etc/apt/sources.list.d/frr.list"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo apt update -y && sudo apt install frr frr-pythontools -y"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo chown frr:frr /etc/frr/daemons && sudo chown frr:frr /etc/frr/frr.conf && sudo chmod 640 /etc/frr/frr.conf"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo usermod -a -G frr ubuntu"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo usermod -a -G frrvty ubuntu"; done

for i in {1..6}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo sed -i 's/=no/=yes/' /etc/frr/daemons"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo sed -i "s/^bgpd=no/bgpd=yes/" /etc/frr/daemons"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo sed -i "s/^isisd=no/isisd=yes/" /etc/frr/daemons"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo sed -i "s/^ospfd=no/ospfd=yes/" /etc/frr/daemons"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo sed -i "s/^ldpd=no/ldpd=yes/" /etc/frr/daemons"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo sed -i "s/^bfdd=no/bfdd=yes/" /etc/frr/daemons"; done
for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo systemctl enable frr.service"; done

for i in {1..14}; do virsh shutdown n$i; done && sleep 10 && virsh list --all && for i in {1..14}; do virsh start n$i; done && sleep 10 && virsh list --all

sleep 30

for i in {1..14}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo apt update -y && sudo apt-get install -y iperf iperf3 mtr traceroute netcat"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo DEBIAN_FRONTEND=noninteractive apt-get -f -y install socat ethtool iproute2 telnet tshark nmap --no-install-recommends"; done

for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo DEBIAN_FRONTEND=noninteractive apt-get -y install bridge-utils cpu-checker --no-install-recommends"; done

#for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo apt update -y && sudo apt install -y gcc make clang llvm libelf-dev gcc-multilib pkg-config"; done

#for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "git clone --recurse-submodules https://github.com/xdp-project/xdp-tutorial && cd /home/ubuntu/xdp-tutorial/ && git submodule update --init && rm -rf"; done

for i in {1..14}; do virsh shutdown n$i; done && sleep 10 && virsh list --all && for i in {1..14}; do virsh start n$i; done && sleep 10 && virsh list --all
#
