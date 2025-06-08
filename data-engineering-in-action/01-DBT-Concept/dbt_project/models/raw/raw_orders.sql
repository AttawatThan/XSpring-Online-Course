{{ 
    config(
        materialized = 'incremental',
        schema = 'raw'
    ) 
}}

select
    orderid as order_id,
    customerid as customer_id,
    orderdate
from {{ source('ecom', 'orders') }}

{% if is_incremental() %}
    where orderdate > (select max(orderdate) from {{ this }})
{% endif %}