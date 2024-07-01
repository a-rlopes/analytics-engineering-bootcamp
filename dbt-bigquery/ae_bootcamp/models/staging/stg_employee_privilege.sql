with source as (
    select * from {{ source('northwind', 'employee_privilege') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source