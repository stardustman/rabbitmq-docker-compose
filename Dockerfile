FROM rabbitmq:3.7-management

ADD ./slave_join.sh /root/slave_join.sh
RUN ["chmod", "+x", "/root/slave_join.sh"]
RUN /root/slave_join.sh
WORKDIR /root



