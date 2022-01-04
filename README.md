# Fire_incidents

## Requirements

Install [Docker](https://docs.docker.com/engine/install/) on your machine.

## Walkthrough

Navigate to project folder and run docker-compose up to start the containers:
```
docker-compose up
```
Inside the project folder run docker-build to build the DBT image:
```
docker build --tag dbt-postgres  --target dbt-postgres .
```
Run the dbt image:

*Note: --mount paths need to be absolute paths and depend on where the project is located*
```
docker run --network=host --mount type=bind,source=/full/path/to/Fire_incidents,target=/usr/app --mount type=bind,source=/full/path/to/Fire_incidents/.dbt,target=/root/.dbt/ dbt-postgres
```
