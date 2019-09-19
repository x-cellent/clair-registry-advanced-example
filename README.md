# Clair + Registry Advanced Setup

This project refers to this [blog articel](https://www.x-cellent.com/blog/advanced-clair-registry-setup/). There you find an indepth explanation.  

## Requirements

- docker
- docker-compose

## Execution

Start the docker-compose
```
$ docker-compose up -d
```
To get real results you should wait some time for Clair to download vulnerabity data. (This can take some time)

You can fill the Docker Registy with images to test by changing the file [importImages.sh](importImages.sh) and running this instruction:

```
$ docker-compose up registry.content
```

Now you can analyze images
```
$ IMAGE=registry.local:80/ubuntu-test docker-compose up klar
```

## Look inside the DB

With adminer you can look at the data in the database at [localhost:8080](http://localhost:8080).  
system: PostgreSQL  
server: postgres  
user: postgres  
password: postgres  
