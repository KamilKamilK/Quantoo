**Welcome in Library application**

This application was created to find books. You can easily add, edit, delete books.

**Download Composer dependencies**

Make sure you have [Composer installed](https://getcomposer.org/download/)
and then run:

```
composer install
```

**Setup the Server**
In command line paste command :

```
symfony serve -d
```

**Setup the Database**
Application is setup on Docker containers
In command line paste command :
```
 docker-compose up -d
```
This command will initiate MqSQL database and Mailer service.

Next commands will create tables in database and populate then with fake values.

```
symfony console doctrine:fixtures:load
```

**Now check out the site at `https://localhost:8000`**