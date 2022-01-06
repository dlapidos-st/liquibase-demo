--liquibase formatted sql
--changeset dlapidos:7
CREATE OR REPLACE VIEW vw_routes AS
SELECT  tenants.name AS tenant_name,
        routes.id,
        routes.tenant_id,
        routes.name,
        routes.name AS route_name
FROM tenants
INNER JOIN routes
ON tenants.id = routes.tenant_id;