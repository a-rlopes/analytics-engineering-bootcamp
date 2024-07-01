with source as (
    select * from {{ source('northwind', 'products') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source