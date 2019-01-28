FROM rabbitmq:3.7-management

ARG MASTER_IP
ADD ./slave_join.sh /slave_join.sh
RUN ["chmod", "+x", "/slave_join.sh"]
WORKDIR /root



