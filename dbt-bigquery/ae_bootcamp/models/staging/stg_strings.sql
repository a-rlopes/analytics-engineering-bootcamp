with source as (
    select * from {{ source('northwind', 'strings') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source