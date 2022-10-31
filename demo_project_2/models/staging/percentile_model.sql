with Percentiles
       AS (SELECT price, 
                  PERCENT_RANK() OVER(
                  ORDER BY price) AS percent_rank
           FROM {{source('jaffle_shop', 'sample-data')}} ),

  
final as (
  select * from Percentiles
)

select * from final