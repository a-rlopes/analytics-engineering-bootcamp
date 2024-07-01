with source as (
    select * from {{ source('northwind', 'invoice') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source