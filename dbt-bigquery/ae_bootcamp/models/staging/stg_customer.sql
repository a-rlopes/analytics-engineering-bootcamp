with source as (
    select * from {{ source('northwind', 'customer') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source