chmod -R 755 /zeppelin-site.xml.template

mv /zeppelin-site.xml.template conf

mkdir interpreter/mongodb && cd interpreter/mongodb

wget https://github.com/bbonnin/zeppelin-mongodb-interpreter/releases/download/0.7.0/zeppelin-mongodb-0.7.0.zip

mv zeppelin-mongodb-0.7.0.zip zeppelin-mongodb-0.7.0.jar
