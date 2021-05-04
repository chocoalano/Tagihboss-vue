# Tagihboss-vue
### Server Requirement
- Redis `sudo apt install redis-server`
- Composer [here](https://getcomposer.org/download/)
- npm `sudo apt install nodejs npm`
- laravel-echo-server `npm install -g laravel-echo-server`

### Laravel Dependencies Requirement
- predis
- laravel-echo
- socket.io-client ^2.4.0 [issue](https://github.com/laravel/echo/issues/237#issuecomment-731308117)

### Installation
- Install fresh laravel via Composer `laravel new laravel-socket-io`
- Go to Laravel directory `cd Tagihboss-vue`
- Add predis `composer require predis/predis`
- Add laravel-echo and socket.io client `npm install --save laravel-echo socket.io-client@2.4.0`
- Create laravel-echo-server configuration `laravel-echo-server init`
- Specify `.env`
```
...
### Broadcast
BROADCAST_DRIVER=redis
...
### Redis
REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379
REDIS_CLIENT=predis
REDIS_PREFIX=""
...
### Laravel Echo Server
LARAVEL_ECHO_SERVER_REDIS_HOST=127.0.0.1
LARAVEL_ECHO_SERVER_REDIS_PORT=6379
LARAVEL_ECHO_SERVER_REDIS_PASSWORD=null
```
- Create new file `resources/js/echo.js`
```js
### echo.js
import Echo from 'laravel-echo';

window.io = require('socket.io-client');

window.Echo = new Echo({
    broadcaster: 'socket.io',
    host: window.location.hostname + ':6001'
});
```
- Add `require('./echo.js');` at bottom of file `resources/js/app.js`
- Run `npm install`
- Run `npm run dev`
- Enable channel route, Uncomment `App\Providers\BroadcastServiceProvider::class,`
- Add route `routes/channels.php`
```php
...
Broadcast::channel('EveryoneChannel', function () {
    return true;
});
...
```
- Create new event `php artisan make:event EveryoneEvent` and edit
```php
<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class EveryoneEvent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    
    /**
    * The name of the queue connection to use when broadcasting the event.
    *
    * @var string
    */
    public $connection = 'redis';

    /**
    * The name of the queue on which to place the broadcasting job.
    *
    * @var string
    */
    public $queue = 'default';

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new Channel('EveryoneChannel');
    }

    /*
     * The Event's broadcast name.
     * 
     * @return string
     */
    public function broadcastAs()
    {
        return 'EveryoneMessage';
    }
    
    /*
     * Get the data to broadcast.
     *
     * @return array
     */
    public function broadcastWith()
    {
        return [
            'message'=> 'Hello!'
        ];
    }
}
```
- Add route for send and receiver broadcast at file `routes/web.php`
```php
...
Route::get('/send', function () {
    broadcast(new App\Events\EveryoneEvent());
    return response('Sent');
});
...
```
- Start laravel-echo-server `laravel-echo-server start`
- Start Laravel queue `php artisan queue:listen redis --queue=default`
- Start Laravel app `php artisan serve`
- Open URL two tabs/browsers
  1. http://localhost:8000/send
  2. http://localhost:8000/receiver
- When you hit first URL you will see `Hello!` from second URL.
- DONE, have a good day!

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[Many](https://www.many.co.uk)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- **[OP.GG](https://op.gg)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
