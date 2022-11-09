with source_data as (
SELECT count(name) as num_trailing FROM `dbt-scotia-demo.demo_data.sample-data`
WHERE name LIKE "% "),


final as (
  select * from source_data
)

select * from final