-- created_at: 2026-11-27T16:16:45.435068+00:00
-- finished_at: 2026-11-27T16:16:45.625094+00:00
-- elapsed: 190ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c8b1d0-020a-1c3f-0013-75b600019986
-- desc: execute adapter call
show terse schemas in database ANALYTICS_DB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "snowflake_dbt_poc", "target_name": "dev"} */;

-- created_at: 2026-11-27T16:16:45.636273+00:00
-- finished_at: 2026-11-27T16:16:45.829837+00:00
-- elapsed: 193ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.snowflake_dbt_poc.stg_orders
-- query_id: 01c8b1d0-020a-2081-0013-75b60002f39a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ANALYTICS_DB"."STAGING_STAGING" LIMIT 10000;

-- created_at: 2026-11-27T16:16:45.835035+00:00
-- finished_at: 2026-11-27T16:16:46.286671+00:00
-- elapsed: 451ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.snowflake_dbt_poc.stg_orders
-- query_id: 01c8b1d0-020a-1c3f-0013-75b60001998a
-- desc: execute adapter call
create or replace   view ANALYTICS_DB.STAGING_STAGING.stg_orders
  
  
  
  
  as (
    select
    order_id,
    customer_id,
    order_total,
    loaded_at
from RAW_PROD.INGESTION.ORDERS_RAW
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.snowflake_dbt_poc.stg_orders", "profile_name": "snowflake_dbt_poc", "target_name": "dev"} */;

