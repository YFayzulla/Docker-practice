<h1 align="center">
Docker practice project</h1>


## start

>requires  [PHP 8.1+](https://php.net/releases/)
> and [Composer](https://getcomposer.org/download/)

FIRST of all you can clone the project from here, [GitHub](https://github.com/) :

```
https://github.com/YFayzulla/Docker-practice

```
<hr>

these code on bash
...
cd Docker-practice
...

```
cp .env.example .env
```


<p> start containes </p>d

```
docker compose up -d
```

kjshdvfkah 
<p> Migrations and Seed Database </p>

```
docker compose exec app php artisan migrate --seed
```

<p> Generate Application Key </p>

```
docker compose exec app php artisan key:generate
```
<p>Access the Application http://localhost </p>

```
docker compose logs -f
```
