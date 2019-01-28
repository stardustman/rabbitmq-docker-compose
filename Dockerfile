FROM rabbitmq:3.7-management

ARG MASTER_IP
ADD ./add_hosts.sh /root/add_hosts.sh
RUN chmod +x /root/add_hosts.sh
ADD ./slave_join.sh /root/slave_join.sh
RUN chmod +x /root/slave_join.sh
WORKDIR /root
RUN ./add_hosts.sh ${MASTER_IP} rabbitmaster
CMD ["./add_hosts.sh",${MASTER_IP},"rabbitmaster"]


