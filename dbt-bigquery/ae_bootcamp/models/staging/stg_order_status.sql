with source as (
    select * from {{ source('northwind', 'order_status') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source