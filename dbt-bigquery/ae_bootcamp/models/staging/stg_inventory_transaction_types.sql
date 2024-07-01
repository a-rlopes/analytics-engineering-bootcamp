with source as (
    select * from {{ source('northwind', 'inventory_transaction_type') }}
)
select 
    *,
    current_timestamp() as ingestion_date
from source