with source_data as (
SELECT AVG(price) as average_value
FROM `dbt-scotia-demo.demo_data.sample-data` ) ,

final as (
  select * from source_data
)

select * from final