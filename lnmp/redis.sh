#!/bin/bash
# redis & webdis

# start redis/webdis
# > cd ~/develop/lnmp/redis
# > ./bin/redis-server ./etc/redis.conf
# > ./bin/redis-client
# > ./bin/webdis ./etc/webdis.json

# redis
redis="$HOME/develop/lnmp/redis"
git clone git://github.com/antirez/redis.git
cd redis
make PREFIX=$redis install
mkdir -p $redis/etc
cp redis.conf $redis/etc/

cd ..

# webdis must install libevent-dev
git clone git://github.com/nicolasff/webdis.git
cd webdis
make
cp webdis $redis/bin
cp webdis.json $redis/etc

cd ..