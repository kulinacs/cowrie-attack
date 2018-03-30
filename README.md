# CS6324 Project

Detecting and classifying attacks in a Linux environment

## Running

Create the network for the system to run on `sudo docker network create alertnet`

Start up the Honeypot and Elastic Stack `sudo docker-compose -f base.yml up` 

When the stack comes up, login to Kibana <http://127.0.0.1:5601> Username: `elastic` Password: `changeme`

Create an index `logstash-*`

Start up ElastAlert `sudo docker-compose -f alert.yml up`

## Testing a rule

python -m elastalert.test_rule <rule_path>
