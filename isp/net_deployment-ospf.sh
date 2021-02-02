#!/bin/bash
#

ssh -o "StrictHostKeyChecking=no" ubuntu@n1 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n1
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 1.1.1.1
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 1.1.1.1
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 1.1.1.1/32 index 1021
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp2
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp3
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp4
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
bfd
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n2 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n2
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 2.2.2.2
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 2.2.2.2
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 2.2.2.2/32 index 1022
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp2
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp3
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp4
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
bfd
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n3 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n3
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 3.3.3.3
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 3.3.3.3
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 3.3.3.3/32 index 1023
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp2
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp3
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp4
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
router bgp 65000
 bgp router-id 3.3.3.3
 bgp log-neighbor-changes
 neighbor 7.7.7.7 remote-as 65000
 neighbor 7.7.7.7 update-source 3.3.3.3
 neighbor 8.8.8.8 remote-as 65000
 neighbor 8.8.8.8 update-source 3.3.3.3
 neighbor 9.9.9.9 remote-as 65000
 neighbor 9.9.9.9 update-source 3.3.3.3
 neighbor 10.10.10.10 remote-as 65000
 neighbor 10.10.10.10 update-source 3.3.3.3
 !
 address-family ipv4 unicast
  no neighbor 7.7.7.7 activate
  no neighbor 8.8.8.8 activate
  no neighbor 9.9.9.9 activate
  no neighbor 10.10.10.10 activate
 exit-address-family
 !
 address-family l2vpn evpn
  neighbor 7.7.7.7 activate
  neighbor 7.7.7.7 route-reflector-client
  neighbor 8.8.8.8 activate
  neighbor 8.8.8.8 route-reflector-client
  neighbor 9.9.9.9 activate
  neighbor 9.9.9.9 route-reflector-client
  neighbor 10.10.10.10 activate
  neighbor 10.10.10.10 route-reflector-client
 exit-address-family
!
bfd
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n4 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n4
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 4.4.4.4
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 4.4.4.4
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 4.4.4.4/32 index 1024
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp2
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp3
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp4
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
router bgp 65000
 bgp router-id 4.4.4.4
 bgp log-neighbor-changes
 neighbor 7.7.7.7 remote-as 65000
 neighbor 7.7.7.7 update-source 4.4.4.4
 neighbor 8.8.8.8 remote-as 65000
 neighbor 8.8.8.8 update-source 4.4.4.4
 neighbor 9.9.9.9 remote-as 65000
 neighbor 9.9.9.9 update-source 4.4.4.4
 neighbor 10.10.10.10 remote-as 65000
 neighbor 10.10.10.10 update-source 4.4.4.4
 !
 address-family ipv4 unicast
  no neighbor 7.7.7.7 activate
  no neighbor 8.8.8.8 activate
  no neighbor 9.9.9.9 activate
  no neighbor 10.10.10.10 activate
 exit-address-family
 !
 address-family l2vpn evpn
  neighbor 7.7.7.7 activate
  neighbor 7.7.7.7 route-reflector-client
  neighbor 8.8.8.8 activate
  neighbor 8.8.8.8 route-reflector-client
  neighbor 9.9.9.9 activate
  neighbor 9.9.9.9 route-reflector-client
  neighbor 10.10.10.10 activate
  neighbor 10.10.10.10 route-reflector-client
 exit-address-family
!
bfd
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n5 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n5
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 5.5.5.5
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 5.5.5.5
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 5.5.5.5/32 index 1025
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp2
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp3
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp4
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
bfd
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n6 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n6
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 6.6.6.6
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 6.6.6.6
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 6.6.6.6/32 index 1026
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp2
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp3
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp4
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
bfd
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n7 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n7
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 7.7.7.7
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 7.7.7.7
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 7.7.7.7/32 index 1027
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
vrf red
 vni 1001
 exit-vrf
!
vrf blue
 vni 1002
 exit-vrf
!
router bgp 65000
 bgp router-id 7.7.7.7
 coalesce-time 1000
 neighbor 3.3.3.3 remote-as 65000
 neighbor 3.3.3.3 update-source 7.7.7.7
 neighbor 4.4.4.4 remote-as 65000
 neighbor 4.4.4.4 update-source 7.7.7.7
 !
 address-family ipv4 unicast
  no neighbor 3.3.3.3 activate
  no neighbor 4.4.4.4 activate
 exit-address-family
 !
 address-family l2vpn evpn
  neighbor 3.3.3.3 activate
  neighbor 4.4.4.4 activate
  advertise-all-vni
  advertise ipv4 unicast
 exit-address-family
!
router bgp 65000 vrf blue
 address-family l2vpn evpn
  advertise ipv4 unicast
 exit-address-family
!
 address-family ipv4 unicast
  redistribute connected
 exit-address-family
!
router bgp 65000 vrf red
 address-family l2vpn evpn
  advertise ipv4 unicast
 exit-address-family
!
 address-family ipv4 unicast
  redistribute connected
 exit-address-family
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n8 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n8
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 8.8.8.8
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 8.8.8.8
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 8.8.8.8/32 index 1028
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
vrf red
 vni 1001
 exit-vrf
!
vrf blue
 vni 1002
 exit-vrf
!
router bgp 65000
 bgp router-id 8.8.8.8
 coalesce-time 1000
 neighbor 3.3.3.3 remote-as 65000
 neighbor 3.3.3.3 update-source 8.8.8.8
 neighbor 4.4.4.4 remote-as 65000
 neighbor 4.4.4.4 update-source 8.8.8.8
 !
 address-family ipv4 unicast
  no neighbor 3.3.3.3 activate
  no neighbor 4.4.4.4 activate
 exit-address-family
 !
 address-family l2vpn evpn
  neighbor 3.3.3.3 activate
  neighbor 4.4.4.4 activate
  advertise-all-vni
  advertise ipv4 unicast
 exit-address-family
!
router bgp 65000 vrf blue
 address-family l2vpn evpn
  advertise ipv4 unicast
 exit-address-family
!
 address-family ipv4 unicast
  redistribute connected
 exit-address-family
!
router bgp 65000 vrf red
 address-family l2vpn evpn
  advertise ipv4 unicast
 exit-address-family
!
 address-family ipv4 unicast
  redistribute connected
 exit-address-family
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n9 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n9
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 9.9.9.9
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 9.9.9.9
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 9.9.9.9/32 index 1029
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
vrf red
 vni 1001
 exit-vrf
!
vrf blue
 vni 1002
 exit-vrf
!
router bgp 65000
 bgp router-id 9.9.9.9
 coalesce-time 1000
 neighbor 3.3.3.3 remote-as 65000
 neighbor 3.3.3.3 update-source 9.9.9.9
 neighbor 4.4.4.4 remote-as 65000
 neighbor 4.4.4.4 update-source 9.9.9.9
 !
 address-family ipv4 unicast
  no neighbor 3.3.3.3 activate
  no neighbor 4.4.4.4 activate
 exit-address-family
 !
 address-family l2vpn evpn
  neighbor 3.3.3.3 activate
  neighbor 4.4.4.4 activate
  advertise-all-vni
  advertise ipv4 unicast
 exit-address-family
!
router bgp 65000 vrf blue
 address-family l2vpn evpn
  advertise ipv4 unicast
 exit-address-family
!
 address-family ipv4 unicast
  redistribute connected
 exit-address-family
!
router bgp 65000 vrf red
 address-family l2vpn evpn
  advertise ipv4 unicast
 exit-address-family
!
 address-family ipv4 unicast
  redistribute connected
 exit-address-family
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

ssh -o "StrictHostKeyChecking=no" ubuntu@n10 "cat << EOF | sudo tee /etc/frr/frr.conf
frr defaults traditional
hostname n10
log syslog informational
service integrated-vtysh-config
username iason nopassword
!
router ospf
 ospf router-id 10.10.10.10
 network 10.255.0.0/16 area 0
 capability opaque
 mpls-te on
 mpls-te router-address 10.10.10.10
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 8
 segment-routing prefix 10.10.10.10/32 index 1030
 router-info area
!
interface lo
 ip ospf area 0
!
interface vpp0
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
interface vpp1
 ip ospf network point-to-point
 ip ospf bfd
 ip ospf hello-interval 10
 ip ospf dead-interval 40
!
vrf red
 vni 1001
 exit-vrf
!
vrf blue
 vni 1002
 exit-vrf
!
router bgp 65000
 bgp router-id 10.10.10.10
 coalesce-time 1000
 neighbor 3.3.3.3 remote-as 65000
 neighbor 3.3.3.3 update-source 10.10.10.10
 neighbor 4.4.4.4 remote-as 65000
 neighbor 4.4.4.4 update-source 10.10.10.10
 !
 address-family ipv4 unicast
  no neighbor 3.3.3.3 activate
  no neighbor 4.4.4.4 activate
 exit-address-family
 !
 address-family l2vpn evpn
  neighbor 3.3.3.3 activate
  neighbor 4.4.4.4 activate
  advertise-all-vni
  advertise ipv4 unicast
 exit-address-family
!
router bgp 65000 vrf blue
 address-family l2vpn evpn
  advertise ipv4 unicast
 exit-address-family
!
 address-family ipv4 unicast
  redistribute connected
 exit-address-family
!
router bgp 65000 vrf red
 address-family l2vpn evpn
  advertise ipv4 unicast
 exit-address-family
!
 address-family ipv4 unicast
  redistribute connected
 exit-address-family
!
line vty
!
log file /var/log/frr/frr.log
!
EOF"

for i in {1..14}; do virsh shutdown n$i; done && sleep 10 && virsh list --all && for i in {1..14}; do virsh start n$i; done && sleep 10 && virsh list --all

sleep 30

#for i in {1..6}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "cd /home/ubuntu/xdp-tutorial/packet-solutions && sudo make && sudo mount -t bpf bpf /sys/fs/bpf/ && sudo ./xdp_loader -d eth1 -F — progsec xdp_router --filename xdp_prog_kern_03.o --auto-mode && sudo ./xdp_loader -d eth2 -F — progsec xdp_router --filename xdp_prog_kern_03.o --auto-mode && sudo ./xdp_loader -d eth3 -F — progsec xdp_router --filename xdp_prog_kern_03.o --auto-mode && sudo ./xdp_loader -d eth4 -F — progsec xdp_router --filename xdp_prog_kern_03.o --auto-mode && sudo ./xdp_loader -d eth5 -F — progsec xdp_router --filename xdp_prog_kern_03.o --auto-mode && sudo ./xdp_prog_user -d eth1 && sudo ./xdp_prog_user -d eth2 && sudo ./xdp_prog_user -d eth3 && sudo ./xdp_prog_user -d eth4 && sudo ./xdp_prog_user -d eth5"; done

#for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "cd /home/ubuntu/xdp-tutorial/packet-solutions && sudo make && sudo mount -t bpf bpf /sys/fs/bpf/ && sudo ./xdp_loader -d eth1 -F — progsec xdp_router --filename xdp_prog_kern_03.o --auto-mode && sudo ./xdp_loader -d eth2 -F — progsec xdp_router --filename xdp_prog_kern_03.o --auto-mode && sudo ./xdp_loader -d eth3 -F — progsec xdp_router --filename xdp_prog_kern_03.o --auto-mode && sudo ./xdp_prog_user -d eth1 && sudo ./xdp_prog_user -d eth2 && sudo ./xdp_prog_user -d eth3"; done

ssh -o "StrictHostKeyChecking=no" ubuntu@n11 "sudo ip a add fd00:99:0::11/64 dev ens8 && sudo ip a add 172.16.0.11/24 dev ens8 && sudo ip link set dev ens8 up"
ssh -o "StrictHostKeyChecking=no" ubuntu@n12 "sudo ip a add fd00:99:0::12/64 dev ens8 && sudo ip a add 172.16.0.12/24 dev ens8 && sudo ip link set dev ens8 up"
ssh -o "StrictHostKeyChecking=no" ubuntu@n13 "sudo ip a add fd00:99:0::13/64 dev ens8 && sudo ip a add 172.16.0.13/24 dev ens8 && sudo ip link set dev ens8 up"
ssh -o "StrictHostKeyChecking=no" ubuntu@n14 "sudo ip a add fd00:99:0::14/64 dev ens8 && sudo ip a add 172.16.0.14/24 dev ens8 && sudo ip link set dev ens8 up"

ssh -o "StrictHostKeyChecking=no" ubuntu@n7 "sudo ip link add vxlan100 type vxlan id 100 local 7.7.7.7 nolearning"
ssh -o "StrictHostKeyChecking=no" ubuntu@n8 "sudo ip link add vxlan100 type vxlan id 100 local 8.8.8.8 nolearning"
ssh -o "StrictHostKeyChecking=no" ubuntu@n9 "sudo ip link add vxlan100 type vxlan id 100 local 9.9.9.9 nolearning"
ssh -o "StrictHostKeyChecking=no" ubuntu@n10 "sudo ip link add vxlan100 type vxlan id 100 local 10.10.10.10 nolearning"
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo ip link set dev vxlan100 mtu 1550"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo ip link set vxlan100 up"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo brctl addbr br100"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo brctl addif br100 vxlan100"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo brctl addif br100 vpp2"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo brctl stp br100 off"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo ip link set br100 address 44:39:39:FF:40:94"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo ip link set br100 up"; done
for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo ip link set vpp2 up"; done

ssh -o "StrictHostKeyChecking=no" ubuntu@n7 "sudo ip link add vxlan4000 type vxlan id 4000 local 7.7.7.7 nolearning"
ssh -o "StrictHostKeyChecking=no" ubuntu@n8 "sudo ip link add vxlan4000 type vxlan id 4000 local 8.8.8.8 nolearning"
ssh -o "StrictHostKeyChecking=no" ubuntu@n9 "sudo ip link add vxlan4000 type vxlan id 4000 local 9.9.9.9 nolearning"
ssh -o "StrictHostKeyChecking=no" ubuntu@n10 "sudo ip link add vxlan4000 type vxlan id 4000 local 10.10.10.10 nolearning"

for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo brctl addbr br4000 && sudo brctl addif br4000 vxlan4000 && sudo ip link set dev br4000 up && sudo ip link set dev vxlan4000 mtu 1550 && sudo ip link set vxlan4000 up"; done

for i in {7..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo ip link add vrf1 type vrf table 100 && sudo ip link set vrf1 up && sudo ip link set br100 master vrf1 && sudo ip link set br4000 master vrf1"; done

for i in {1..10}; do ssh -o "StrictHostKeyChecking=no" ubuntu@n$i "sudo service frr status"; done
#
