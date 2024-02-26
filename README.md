# Getting started with Docker deployment 

### Run docker compose command from the path where docker compose yml file is 
### MYSQL can only run one instance, either local or production
### mysql is using the shared volume 

## For Local Development 

- Check if the mysql instance is running or not 
- mysql-container-local is the name of local mysql instance 
- If not running, run the following docker compose command to standup mysql container
```angular2html
docker compose -f docker_compose_local.yml up -d 
```
- To shut down the container use the following command 
```angular2html
docker compose -f docker_compose_local.yml down
```

## For production instance 

- Check if the mysql local instance is running or not 
- If running, stop it first using docker cli
- Then run the following docker compose command
```angular2html
docker compose -f docker_compose.yml up -d
```
- To shut down the container , use the following command 
```angular2html
docker compose -f docker_compose.yml down
```