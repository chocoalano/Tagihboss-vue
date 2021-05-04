# Tagihboss-vue
**Server Requirement Redis** 
$ sudo apt install redis-server 
**Composer here** 
$ npm sudo apt install nodejs 
$ npm laravel-echo-server 
$ npm install -g laravel-echo-server 
**Laravel Dependencies Requirement predis laravel-echo socket.io-client ^2.4.0 issue Installation 
Install fresh laravel via Composer laravel new laravel-socket-io Go to Laravel directory 
cd Tagihboss-vue Add predis** 
$ composer require predis/predis Add laravel-echo and socket.io client 
$ npm install --save laravel-echo socket.io-client@2.4.0 
**Create laravel-echo-server & configuration laravel-echo-server init Specify .env** 
# Broadcast BROADCAST_DRIVER=redis
# Redis REDIS_HOST=127.0.0.1 
REDIS_PASSWORD=null 
REDIS_PORT=6379 
REDIS_CLIENT=predis 
REDIS_PREFIX="" 
# Laravel Echo Server 
LARAVEL_ECHO_SERVER_REDIS_HOST=127.0.0.1 
LARAVEL_ECHO_SERVER_REDIS_PORT=6379 
LARAVEL_ECHO_SERVER_REDIS_PASSWORD=null
