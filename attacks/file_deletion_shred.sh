#!/bin/sh
# Tactic: Defense Evasion
# Name: File Deletion
# ID:   T1107
# Creates and shreds a test file
ssh -p 2222 root@127.0.0.1 "touch test; shred -u test"
