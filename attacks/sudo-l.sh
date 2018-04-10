#!/bin/sh
# Tactic: Privilege Escalation
# Name: Sudo List Commands
# ID: 	T1169
# Calls sudo -l
ssh -p 2222 root@127.0.0.1 "sudo -l"
