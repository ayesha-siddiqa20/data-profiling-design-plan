with source_data as (
SELECT AVG(price) as average_value
FROM {{source('jaffle_shop', 'sample-data')}} ) ,

final as (
  select * from source_data
)

select * from final