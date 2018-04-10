#!/bin/sh
# Tactic: defense evasion
# Name: Clear Command History
# ID: 	T1146
# Deletes .bash_history 
ssh -p 2222 root@127.0.0.1 "rm ~/.bash_history"

