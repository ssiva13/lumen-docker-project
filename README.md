# lumen-docker
## Setting up Lumen + MySQL + Docker


- Rename .env.example to .env (or use your own .env)
- Genarate/Set APP_KEY
- In .env, change DB_HOST=127.0.0.1 to DB_HOST=your_mysql_container_name (DB_HOST=mysqldb in this example)
- Build and run project

```
docker-compose --env-file .env up --build -d
```
