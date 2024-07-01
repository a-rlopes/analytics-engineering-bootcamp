with source as (
    select distinct * from {{ source('northwind', 'employee') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source