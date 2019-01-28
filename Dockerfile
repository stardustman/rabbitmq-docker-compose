FROM rabbitmq:3.7-management

ADD ./slave_join.sh .
RUN ["chmod", "+x", "./slave_join.sh"]
RUN ./slave_join.sh
WORKDIR /root