# Docker MySQL 
## Run your query

```bash
 docker exec docker-mysql mysql -uroot -pcannon -e 'SELECT * from cannon.branch' 
```
or 
```bash
 docker exec -it docker-mysql bash 
 mysql -uroot -pcannon
```

