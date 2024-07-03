with source as (
    select * from {{ source('northwind', 'order_detail') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source