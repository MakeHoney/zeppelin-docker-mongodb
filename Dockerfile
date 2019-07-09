FROM apache/zeppelin:0.8.1

ADD zeppelin-site.xml.template /

ADD install_mongodb_interpreter.sh /

RUN chmod +x /install_mongodb_interpreter.sh

RUN /install_mongodb_interpreter.sh
