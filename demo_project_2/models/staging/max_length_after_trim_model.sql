with source_data as 
	(
    SELECT REPLACE(LTRIM(REPLACE(CAST(price as string),'0',' ')),' ','0')
    as num
    FROM {{source('jaffle_shop', 'sample-data')}}
    ),

final as (
SELECT MAX(LENGTH(num)) as max_length from source_data
  )

SELECT * from final