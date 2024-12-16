Create a postgres container:
```bash
docker run --name td-sql-nevot \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=123 \
  -e POSTGRES_DB=zenetude-bd \
  -p 5433:5432 \
  -d postgres
```

Access the container:
```bash
docker exec -it td-sql-nevot bash
```

Access to Postgres, and use the database:
```bash
psql -U postgres -d zenetude-bd
```

Show the tables:
```sql
\dt
```

Create a adminer container:
```bash
docker run -d --name adminer -p 8080:8080 adminer
```

Access the adminer in the browser:

```url
http://localhost:8080/?pgsql=host.docker.internal%3A5433&username=postgres&db=zenetude-bd
```

Stop and remove the containers:
```bash
docker stop td-sql-nevot adminer
docker rm td-sql-nevot adminer
```