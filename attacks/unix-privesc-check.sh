#!/bin/sh
# Tactic: Command and Control
# Name: Remote File Copy
# ID: 	T1105
# Detects the remote copy of unix-privesc-check, a standard privilege escalation attack script
scp -P 2222 ./payloads/unix-privesc-check root@127.0.0.1:~
