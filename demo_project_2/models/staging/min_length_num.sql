with source_data as (
SELECT MIN(LENGTH(CAST(price as string)))
as length FROM `dbt-scotia-demo.demo_data.sample-data` ) ,


final as (
  select * from source_data
)

select * from final

-- CAST(price as string) is used for floats/ints