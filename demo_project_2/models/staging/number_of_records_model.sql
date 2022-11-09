
with source_data as (
      SELECT COUNT(*) as number_of_records
      FROM `dbt-scotia-demo.demo_data.sample-data` ),

final as (
  select * from source_data
)

select * from final
