FROM liquibase/liquibase:4.6.2

COPY liquibase.properties /liquibase/changelog/liquibase.properties
COPY ./sql/ /flyway/sql/
#COPY ./custom-docker-entrypoint.sh /liquibase/custom-docker-entrypoint.sh

#USER root
#RUN chmod +x /liquibase/custom-docker-entrypoint.sh

#USER liquibase
#ENTRYPOINT [ "/liquibase/custom-docker-entrypoint.sh" ]
