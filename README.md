# CS6324 Project

Detecting and classifying attacks in a Linux environment

## Running

Create the network for the system to run on `sudo docker network create alertnet`

Increase the max mem count `sudo sysctl -w vm.max_map_count=262144`

Start up the Honeypot and Elastic Stack `sudo docker-compose -f base.yml up` 

When the stack comes up, login to Kibana <http://127.0.0.1:5601> Username: `elastic` Password: `changeme`

Create an index `logstash-*`

Start up ElastAlert `sudo docker-compose -f alert.yml up`

## Testing a rule

List containers

`sudo docker ps`

Grab container ID for elast alert

Attach to container

`sudo docker exec -it containerid /bin/sh`

Rules found in `/opt/elastalert/rules`

Config found at `/opt/elastalert/config.yml`

Run rule

`python -m elastalert.test_rule --config config.yml <rule_path>`

## MITRE Attack Matrix

https://attack.mitre.org/wiki/Linux_Technique_Matrix

## Nick's Straight Forward Rules

### User enumeration

cat /etc/passwd

cat */????wd

### Group enumerate

cat /etc/group

### System Enumeration

uname -a

### User Privilege enumeration

sudo -l

### Miscellaneous Find Commands

Search for setuid binaries

Search for writable directories

See: https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/

Further reading: WAF bypassing (Nick will look for link)
