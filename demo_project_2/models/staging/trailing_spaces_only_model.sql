with source_data as (
SELECT count(name) as num_trailing FROM {{source('jaffle_shop', 'sample-data')}}
WHERE name LIKE "% "),


final as (
  select * from source_data
)

select * from final