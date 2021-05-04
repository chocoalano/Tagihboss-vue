# Tagihboss-vue
---
**Server Requirement Redis**
   * $ sudo apt install redis-server
---
**Composer here**
1. $ npm sudo apt install nodejs 
2. $ npm laravel-echo-server 
3. $ npm install -g laravel-echo-server 
4. **cd Tagihboss-vue Add predis**
    * $ composer require predis/predis Add laravel-echo and socket.io client 
    * $ npm install --save laravel-echo socket.io-client@2.4.0
5. **Create laravel-echo-server & configuration laravel-echo-server init Specify .env**
    * BROADCAST_DRIVER=redis
    * REDIS_HOST=127.0.0.1 
    * REDIS_PASSWORD=null
    * REDIS_PORT=6379
    * REDIS_CLIENT=predis
    * REDIS_PREFIX=""
    * .....
    * LARAVEL_ECHO_SERVER_REDIS_HOST=127.0.0.1
    * LARAVEL_ECHO_SERVER_REDIS_PORT=6379
    * LARAVEL_ECHO_SERVER_REDIS_PASSWORD=null
6. **Finish**
    * Start laravel-echo-server laravel-echo-server start
    * Start Laravel queue php artisan queue:listen redis --queue=default
    * Start Laravel app php artisan serve
    * Open URL two tabs/browsers [http://localhost:8000]
    * When you hit first URL you will see Hello! from second URL.
    * DONE, have a good day!
