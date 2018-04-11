#!/bin/sh
# Tactic: Privilege Escalation
# Name: Setuid Enumeration
# ID: 	T1166
# Enumerates any files with setuid permissions
ssh -p 2222 root@127.0.0.1 'find / -perm -4000 -exec ls -al {} \;'
