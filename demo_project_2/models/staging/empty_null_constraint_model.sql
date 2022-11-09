


with source_data as (
  
SELECT sku, 
       CASE WHEN TRIM(sku) LIKE '' or sku IS NULL THEN 'False' ELSE 'True' END AS Y_N_value
FROM `dbt-scotia-demo.demo_data.sample-data` ),


final as (
  select * from source_data
)

select * from final