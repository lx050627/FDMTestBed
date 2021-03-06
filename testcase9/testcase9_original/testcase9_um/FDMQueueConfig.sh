#!/bin/bash

sudo ifconfig s1-eth5 txqueuelen 1
sudo ovs-vsctl -- set Port s1-eth5 qos=@newqos -- --id=@newqos create QoS type=linux-htb other-config:max-rate=100000000 queues:1=@q1 queues:2=@q2 --  --id=@q1 create Queue other-config:min-rate=5000000 other-config:max-rate=5000000 --  --id=@q2 create Queue other-config:min-rate=1882000 other-config:max-rate=1882000
sudo ifconfig s1-eth6 txqueuelen 1
sudo ovs-vsctl -- set Port s1-eth6 qos=@newqos -- --id=@newqos create QoS type=linux-htb other-config:max-rate=100000000 queues:3=@q3 --  --id=@q3 create Queue other-config:min-rate=3118000 other-config:max-rate=3118000
sudo ifconfig s2-eth5 txqueuelen 1
sudo ovs-vsctl -- set Port s2-eth5 qos=@newqos -- --id=@newqos create QoS type=linux-htb other-config:max-rate=100000000 queues:4=@q4 queues:5=@q5 --  --id=@q4 create Queue other-config:min-rate=5000000 other-config:max-rate=5000000 --  --id=@q5 create Queue other-config:min-rate=2557730 other-config:max-rate=2557730
sudo ifconfig s2-eth6 txqueuelen 1
sudo ovs-vsctl -- set Port s2-eth6 qos=@newqos -- --id=@newqos create QoS type=linux-htb other-config:max-rate=100000000 queues:6=@q6 --  --id=@q6 create Queue other-config:min-rate=2442270 other-config:max-rate=2442270
sudo ifconfig s3-eth3 txqueuelen 1
sudo ovs-vsctl -- set Port s3-eth3 qos=@newqos -- --id=@newqos create QoS type=linux-htb other-config:max-rate=100000000 queues:7=@q7 queues:8=@q8 --  --id=@q7 create Queue other-config:min-rate=4000000 other-config:max-rate=4000000 --  --id=@q8 create Queue other-config:min-rate=4000000 other-config:max-rate=4000000
sudo ifconfig s4-eth5 txqueuelen 1
sudo ovs-vsctl -- set Port s4-eth5 qos=@newqos -- --id=@newqos create QoS type=linux-htb other-config:max-rate=100000000 queues:9=@q9 queues:10=@q10 --  --id=@q9 create Queue other-config:min-rate=3000000 other-config:max-rate=3000000 --  --id=@q10 create Queue other-config:min-rate=1534640 other-config:max-rate=1534640
sudo ifconfig s4-eth6 txqueuelen 1
sudo ovs-vsctl -- set Port s4-eth6 qos=@newqos -- --id=@newqos create QoS type=linux-htb other-config:max-rate=100000000 queues:11=@q11 --  --id=@q11 create Queue other-config:min-rate=1465360 other-config:max-rate=1465360
sudo ifconfig s5-eth5 txqueuelen 1
sudo ovs-vsctl -- set Port s5-eth5 qos=@newqos -- --id=@newqos create QoS type=linux-htb other-config:max-rate=100000000 queues:12=@q12 --  --id=@q12 create Queue other-config:min-rate=1129200 other-config:max-rate=1129200
sudo ifconfig s5-eth6 txqueuelen 1
sudo ovs-vsctl -- set Port s5-eth6 qos=@newqos -- --id=@newqos create QoS type=linux-htb other-config:max-rate=100000000 queues:13=@q13 queues:14=@q14 --  --id=@q13 create Queue other-config:min-rate=3000000 other-config:max-rate=3000000 --  --id=@q14 create Queue other-config:min-rate=1870800 other-config:max-rate=1870800
sudo ovs-ofctl -O Openflow13 queue-stats s1
sudo ovs-ofctl -O Openflow13 queue-stats s2
sudo ovs-ofctl -O Openflow13 queue-stats s3
sudo ovs-ofctl -O Openflow13 queue-stats s4
sudo ovs-ofctl -O Openflow13 queue-stats s5
