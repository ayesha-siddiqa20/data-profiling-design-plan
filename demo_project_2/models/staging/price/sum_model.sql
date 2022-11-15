
with source_data as (
  SELECT
      SUM(price) as total_price
  FROM
      `dbt-scotia-demo.demo_data.sample-data`
  GROUP By
      brand ),

final as (
  select * from source_data
)

select * from final