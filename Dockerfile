FROM logstash:7.6.2
WORKDIR /usr/share/logstash
COPY mysql-connector-java-8.0.20.jar vendor/jar/jdbc/
RUN bin/logstash-plugin install logstash-output-jdbc
