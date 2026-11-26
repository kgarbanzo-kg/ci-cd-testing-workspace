select
    order_id,
    customer_id,
    order_total,
    loaded_at
from {{ source('raw_ingestion', 'orders_raw') }}