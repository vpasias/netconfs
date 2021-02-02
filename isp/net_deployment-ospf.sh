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
interface lo
 ipv6 address 5000::12/128
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1
 isis passive
!
interface vpp0
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp1
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp2
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp3
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp4
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
router isis 1
 net 49.0000.0000.0000.0012.00
 is-type level-2-only
 topology ipv6-unicast
 lsp-timers gen-interval 5 refresh-interval 65000 max-lifetime 65535
 spf-interval 5
 log-adjacency-changes
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 16
 segment-routing prefix 5000::12/128 index 12 explicit-null
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
interface lo
 ipv6 address 5000::13/128
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1
 isis passive
!
interface vpp0
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp1
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp2
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp3
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp4
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
router isis 1
 net 49.0000.0000.0000.0013.00
 is-type level-2-only
 topology ipv6-unicast
 lsp-timers gen-interval 5 refresh-interval 65000 max-lifetime 65535
 spf-interval 5
 log-adjacency-changes
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 16
 segment-routing prefix 5000::13/128 index 13 explicit-null
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
interface lo
 ipv6 address 5000::14/128
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1
 isis passive
!
interface vpp0
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp1
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp2
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp3
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp4
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
router isis 1
 net 49.0000.0000.0000.0014.00
 is-type level-2-only
 topology ipv6-unicast
 lsp-timers gen-interval 5 refresh-interval 65000 max-lifetime 65535
 spf-interval 5
 log-adjacency-changes
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 16
 segment-routing prefix 5000::14/128 index 14 explicit-null
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
interface lo
 ipv6 address 5000::15/128
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1
 isis passive
!
interface vpp0
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp1
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp2
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp3
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp4
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
router isis 1
 net 49.0000.0000.0000.0015.00
 is-type level-2-only
 topology ipv6-unicast
 lsp-timers gen-interval 5 refresh-interval 65000 max-lifetime 65535
 spf-interval 5
 log-adjacency-changes
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 16
 segment-routing prefix 5000::15/128 index 15 explicit-null
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
interface lo
 ipv6 address 5000::16/128
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1
 isis passive
!
interface vpp0
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp1
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp2
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp3
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp4
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
router isis 1
 net 49.0000.0000.0000.0016.00
 is-type level-2-only
 topology ipv6-unicast
 lsp-timers gen-interval 5 refresh-interval 65000 max-lifetime 65535
 spf-interval 5
 log-adjacency-changes
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 16
 segment-routing prefix 5000::16/128 index 16 explicit-null
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
interface lo
 ipv6 address 5000::17/128
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1
 isis passive
!
interface vpp0
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp1
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
router isis 1
 net 49.0000.0000.0000.0017.00
 is-type level-2-only
 topology ipv6-unicast
 lsp-timers gen-interval 5 refresh-interval 65000 max-lifetime 65535
 spf-interval 5
 log-adjacency-changes
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 16
 segment-routing prefix 5000::17/128 index 17 explicit-null
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
interface lo
 ipv6 address 5000::18/128
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1
 isis passive
!
interface vpp0
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp1
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
router isis 1
 net 49.0000.0000.0000.0018.00
 is-type level-2-only
 topology ipv6-unicast
 lsp-timers gen-interval 5 refresh-interval 65000 max-lifetime 65535
 spf-interval 5
 log-adjacency-changes
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 16
 segment-routing prefix 5000::18/128 index 18 explicit-null
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
interface lo
 ipv6 address 5000::19/128
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1
 isis passive
!
interface vpp0
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp1
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
router isis 1
 net 49.0000.0000.0000.0019.00
 is-type level-2-only
 topology ipv6-unicast
 lsp-timers gen-interval 5 refresh-interval 65000 max-lifetime 65535
 spf-interval 5
 log-adjacency-changes
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 16
 segment-routing prefix 5000::19/128 index 19 explicit-null
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
interface lo
 ipv6 address 5000::20/128
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1
 isis passive
!
interface vpp0
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
interface vpp1
 ipv6 router isis 1
 ip router isis 1
 isis circuit-type level-2-only
 isis metric 1000
 isis network point-to-point
 isis fast-reroute ti-lfa
 isis bfd
 isis hello-multiplier 3
!
router isis 1
 net 49.0000.0000.0000.0020.00
 is-type level-2-only
 topology ipv6-unicast
 lsp-timers gen-interval 5 refresh-interval 65000 max-lifetime 65535
 spf-interval 5
 log-adjacency-changes
 segment-routing on
 segment-routing global-block 16000 23999
 segment-routing node-msd 16
 segment-routing prefix 5000::20/128 index 20 explicit-null
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
