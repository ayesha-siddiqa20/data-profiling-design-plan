with source_data as (
  select MIN(num_sold) as min_number from `dbt-scotia-demo.demo_data.sample-data`
),

final as (
  select * from source_data
)

select * from final

