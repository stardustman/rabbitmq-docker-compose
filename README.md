# Docker RabbitMQ cluster
## Master node (Machine1)

### Step 1 Master Node
```sh
git clone https://github.com/yunusdgntr/rabbitmq-docker
cd rabbitmq-docker
docker-compose -f docker-compose-master.yml up -d
```

## Slave node join to Master node (Machine2)

### Step 1 Slave Node preparation
```sh
git clone https://github.com/yunusdgntr/rabbitmq-docker
cd rabbitmq-docker
chmod a+x add_hosts.sh
chmod a+x slave_join.sh
```
My Master node(Machine1) IP is 192.168.1.120 . Use your Machine1 IP .
```sh
./add_hosts.sh 192.168.1.120 rabbitmaster
```
Clustering port is 25672. Check 25672 port is accessible or not. 

### Step 2 Slave Node docker-compose up
My Master node(Machine1) IP is 192.168.1.120 . Use your Machine1 IP .

```sh
MASTER_IP=192.168.1.120 SLAVE_NAME=rabbitslave docker-compose -f docker-compose-slave.yml up  -d rabbitmq
```
### Step 3 Slave Node join cluster
Run slave_join.sh in your slave container for join to master cluster.

```sh
docker ps
docker exec -it yourContainerID bash slave_join.sh
```