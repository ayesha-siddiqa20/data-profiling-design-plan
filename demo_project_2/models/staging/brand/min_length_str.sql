with source_data as (
SELECT MIN(LENGTH(brand)) as length FROM 
 `dbt-scotia-demo.demo_data.sample-data`) ,


final as (
  select * from source_data
)

select * from final

-- this code is used for strings
