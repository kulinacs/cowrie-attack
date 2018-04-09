#!/bin/sh
# Tactic: Command and Control
# Name: Remote File Copy
# ID: 	T1105
# Detects the remote copy of enum4linux, a standard enumeration attack script
scp -P 2222 ./payloads/enum4linux.pl root@127.0.0.1:~
