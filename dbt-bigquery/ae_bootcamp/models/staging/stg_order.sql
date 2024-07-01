with source as (
    select * from {{ source('northwind', 'order') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source