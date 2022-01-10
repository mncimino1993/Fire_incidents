# Fire_incidents

## Requirements

Install [Docker](https://docs.docker.com/engine/install/) on your machine.

Remember to follow the [Post-installation steps](https://docs.docker.com/engine/install/linux-postinstall/) to run docker commands **without sudo**.

## Walkthrough

1) Navigate to project folder and run:
```
docker-compose --profile seed up --build
``` 
This will build the required containers, start them and begin seeding the dabase.

2) Once the database finishes loading all the records, the daily loader can be started runing:
```
docker-compose up --build elt-cron
```
