# Clair + Registry Advanced Setup

This project refers to a unpublished blog articel. 

## Requirements

- docker
- docker-compose

## Execution

Start the docker-compose
```
$ docker-compose up -d
```
To get real results you should wait some time for Clair to download vulnerabity data. (This can take some time)

Now you can analyze images
```
$ IMAGE=registry.local:80/ubuntu-test docker-compose up klar
```

## DB anschauen

With adminer you look at the data in the database at [localhost:8080](http://localhost:8080).  
System: PostgreSQL  
Server: postgres  
User: postgres  
Passwort: postgres  