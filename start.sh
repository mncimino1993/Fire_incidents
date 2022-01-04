#!/bin/bash
docker build --tag dbt-postgres  --target dbt-postgres .
docker-compose up
