# Docker RabbitMQ cluster

# Slave join cluster
docker-compose  -f docker-compose-slave.yml run  -e MASTER_IP=192.168.1.120
