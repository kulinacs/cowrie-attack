#!/bin/sh
# Tactic: Credential Access
# Name: View Bash History
# ID: 	T1139
# Calls cat on .bash_history 
ssh -p 2222 root@127.0.0.1 "cat ~/.bash_history"
