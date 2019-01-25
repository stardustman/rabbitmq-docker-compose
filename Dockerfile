FROM rabbitmq:3.7-management

ARG MASTER_IP
ADD ./add_hosts.sh /root/add_hosts.sh
RUN chmod +x /root/add_hosts.sh
RUN /root/add_hosts.sh ${MASTER_IP} rabbitmaster
