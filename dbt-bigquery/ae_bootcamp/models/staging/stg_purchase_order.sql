with source as (
    select * from {{ source('northwind', 'purchase_order') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source