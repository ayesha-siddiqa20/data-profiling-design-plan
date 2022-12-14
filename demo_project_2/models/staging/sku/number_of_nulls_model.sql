with source_data as (
    SELECT COUNT(*) as number_of_nulls
    FROM `dbt-scotia-demo.demo_data.sample-data`
    WHERE sku IS null),

final as (
  select * from source_data
)

select * from final
