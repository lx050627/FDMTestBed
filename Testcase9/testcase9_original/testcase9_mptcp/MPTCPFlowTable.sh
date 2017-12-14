#!/bin/bash

sudo ovs-ofctl add-flow s1 ip,nw_src=10.0.1.0/32,actions=output:5
sudo ovs-ofctl add-flow s1 in_port=5,actions=normal
sudo ovs-ofctl add-flow s1 ip,nw_src=10.0.2.1/32,actions=output:6
sudo ovs-ofctl add-flow s1 ip,nw_src=10.0.1.1/32,actions=output:6
sudo ovs-ofctl add-flow s1 in_port=6,actions=normal

sudo ovs-ofctl add-flow s2 ip,nw_src=10.0.4.0/32,actions=output:5
sudo ovs-ofctl add-flow s2 ip,nw_src=10.0.3.0/32,actions=output:5
sudo ovs-ofctl add-flow s2 in_port=5,actions=normal
sudo ovs-ofctl add-flow s2 ip,nw_src=10.0.3.1/32,actions=output:6
sudo ovs-ofctl add-flow s2 in_port=6,actions=normal

sudo ovs-ofctl add-flow s3 ip,nw_src=10.0.6.0/32,actions=output:3
sudo ovs-ofctl add-flow s3 ip,nw_src=10.0.5.0/32,actions=output:3
sudo ovs-ofctl add-flow s3 in_port=3,actions=normal

sudo ovs-ofctl add-flow s4 ip,nw_src=10.0.8.0/32,actions=output:5
sudo ovs-ofctl add-flow s4 ip,nw_src=10.0.7.0/32,actions=output:5
sudo ovs-ofctl add-flow s4 in_port=5,actions=normal
sudo ovs-ofctl add-flow s4 ip,nw_src=10.0.7.1/32,actions=output:6
sudo ovs-ofctl add-flow s4 in_port=6,actions=normal

sudo ovs-ofctl add-flow s5 ip,nw_src=10.0.9.0/32,actions=output:5
sudo ovs-ofctl add-flow s5 in_port=5,actions=normal
sudo ovs-ofctl add-flow s5 ip,nw_src=10.0.10.1/32,actions=output:6
sudo ovs-ofctl add-flow s5 ip,nw_src=10.0.9.1/32,actions=output:6
sudo ovs-ofctl add-flow s5 in_port=6,actions=normal

sudo ovs-ofctl add-flow s6 in_port=1,actions=output:5
sudo ovs-ofctl add-flow s6 in_port=2,actions=output:5
sudo ovs-ofctl add-flow s6 in_port=3,actions=output:5
sudo ovs-ofctl add-flow s6 in_port=4,actions=output:5
sudo ovs-ofctl add-flow s6 in_port=5,actions=normal
sudo ovs-ofctl add-flow s7 in_port=1,actions=output:4
sudo ovs-ofctl add-flow s7 in_port=2,actions=output:4
sudo ovs-ofctl add-flow s7 in_port=3,actions=output:4
sudo ovs-ofctl add-flow s7 in_port=4,actions=normal
sudo ovs-ofctl add-flow s8 in_port=1,actions=output:3
sudo ovs-ofctl add-flow s8 in_port=2,actions=output:3
sudo ovs-ofctl add-flow s8 in_port=3,actions=normal

sudo ovs-ofctl add-flow s9 in_port=1,actions=output:2
sudo ovs-ofctl add-flow s9 in_port=2,actions=normal
sudo ovs-ofctl add-flow s10 in_port=1,actions=output:2
sudo ovs-ofctl add-flow s10 in_port=2,actions=normal
sudo ovs-ofctl add-flow s11 in_port=1,actions=output:2
sudo ovs-ofctl add-flow s11 in_port=2,actions=normal

sudo ovs-ofctl add-flow s12 in_port=1,actions=output:4
sudo ovs-ofctl add-flow s12 in_port=2,actions=output:4
sudo ovs-ofctl add-flow s12 in_port=3,actions=output:4
sudo ovs-ofctl add-flow s12 in_port=4,actions=normal

sudo ovs-ofctl add-flow s1 priority=100,actions=normal
sudo ovs-ofctl add-flow s2 priority=100,actions=normal
sudo ovs-ofctl add-flow s3 priority=100,actions=normal
sudo ovs-ofctl add-flow s4 priority=100,actions=normal
sudo ovs-ofctl add-flow s5 priority=100,actions=normal
sudo ovs-ofctl add-flow s6 priority=100,actions=normal
sudo ovs-ofctl add-flow s7 priority=100,actions=normal
sudo ovs-ofctl add-flow s8 priority=100,actions=normal
sudo ovs-ofctl add-flow s9 priority=100,actions=normal
sudo ovs-ofctl add-flow s10 priority=100,actions=normal
sudo ovs-ofctl add-flow s11 priority=100,actions=normal
sudo ovs-ofctl add-flow s12 priority=100,actions=normal