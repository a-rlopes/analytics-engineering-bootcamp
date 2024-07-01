with source as (
    select distinct * from {{ source('northwind', 'employee') }}
)
select * from source