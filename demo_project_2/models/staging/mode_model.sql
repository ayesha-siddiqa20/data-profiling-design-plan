with source_data as (

SELECT
    brand,
    COUNT(*) as cnt
FROM
    {{source('jaffle_shop', 'sample-data')}}
GROUP By
    brand
),

final as (
SELECT brand as mode_value from source_data WHERE cnt in (SELECT MAX(cnt) from source_data)
)

select * from final