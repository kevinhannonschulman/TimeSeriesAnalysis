# local_db

Creates a containerized postgres database with dummy data

### Steps

Install docker desktop https://docs.docker.com/desktop/

Clone the repo and do the following:

- create the image + container 
```docker compose up -d```

- create a bash session on the container 
```docker exec -i local_db bash``` 

- log into the database using credentials in `./database.env`
```psql -d database -U user -W```

- verify that the table contains data from my_table.csv
```
select * from public.my_table;
```
```
    a     |    b     |    c
----------+----------+----------
 column a | column b | column c
 column a | column b | column c
 column a | column b | column c
 column a | column b | column c
(4 rows)
```