# Install MongoDB Interpreter

chmod -R 755 /zeppelin-site.xml.template

mv /zeppelin-site.xml.template conf

mkdir interpreter/mongodb && cd interpreter/mongodb

wget https://github.com/bbonnin/zeppelin-mongodb-interpreter/releases/download/0.7.0/zeppelin-mongodb-0.7.0.zip

mv zeppelin-mongodb-0.7.0.zip zeppelin-mongodb-0.7.0.jar

# Setup Library Path

export LD_LIBRARY_PATH=/usr/lib

# Install openssl 1.1

cd / && wget https://www.openssl.org/source/openssl-1.1.0e.tar.gz

tar xvf openssl-1.1.0e.tar.gz && cd openssl-1.1.0e

./config --prefix=/usr -fPIC shared

make && make install

# Install MongoDB Binary (to use mongodb client)

cd / && wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1804-4.0.10.tgz

tar xvf mongodb-linux-x86_64-ubuntu1804-4.0.10.tgz && cd mongodb-linux-x86_64-ubuntu1804-4.0.10/bin

cp mongo /mongo

# ./mongo <host>:<port> &




