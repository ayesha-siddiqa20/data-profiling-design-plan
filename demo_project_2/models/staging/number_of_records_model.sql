
with source_data as (
      SELECT COUNT(*) as number_of_records
      FROM {{source('jaffle_shop', 'sample-data')}} ),

final as (
  select * from source_data
)

select * from final
