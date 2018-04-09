#!/bin/sh
# Tactic: Discovery
# Name: System Information Discovery
# ID: 	T1082
# Enumerates current firewall rules, allowing an attacker to better understand the network constraints on a box
ssh -p 2222 root@127.0.0.1 "iptables -S"
