with source_data as (
    SELECT COUNT(*) as number_of_nulls
    FROM {{source('jaffle_shop', 'sample-data')}} 
    WHERE sku IS null),

final as (
  select * from source_data
)

select * from final
