with source_data as (
SELECT MIN(LENGTH(brand)) as length FROM 
 {{source('jaffle_shop', 'sample-data')}} ) ,


final as (
  select * from source_data
)

select * from final

-- this code is used for strings
