#!/bin/bash

docker run \
    --rm \
    --env-file ./postgres.env \
    --network liquibase-demo_liquibase-network \
    --volume ${PWD}/liquibase/sql/:/liquibase/changelog \
    liquibase/liquibase:4.6.2 \
    --defaultsFile=changelog/liquibase.properties \
    --changeLogFile=changelog/V1__create_tables.sql \
    update
