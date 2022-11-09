with Percentiles
       AS (SELECT price, 
                  PERCENT_RANK() OVER(
                  ORDER BY price) AS percent_rank
           FROM `dbt-scotia-demo.demo_data.sample-data`),

  
final as (
  select * from Percentiles
)

select * from final