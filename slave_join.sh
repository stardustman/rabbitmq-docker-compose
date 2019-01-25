#!/bin/bash
# join cluster to master node
# Yunus Doğan 25.01.2019


rabbitmqctl stop_app
rabbitmqctl reset
rabbitmqctl join_cluster rabbitmaster@rabbitmaster
rabbitmqctl start_app