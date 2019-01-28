# Docker RabbitMQ cluster
## Master node

docker-compose -f docker-compose-master.yml up -d


## Slave join cluster

MASTER_IP=192.168.1.120 docker-compose -f docker-compose-slave.yml run rabbitmq

MASTER_IP=192.168.1.127 docker-compose -f docker-compose-slave.yml up  -d rabbitmq

