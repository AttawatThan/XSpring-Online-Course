{{
    config (
        materialized = 'view',
        schema = 'serving'
    )
}}

select
    order_id,
    customer_id,
    orderdate
from {{ ref('raw_orders') }}
