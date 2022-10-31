with source_data as (
select
 length(
    substr(
        cast(price as string),
        instr(cast(price as string), '.') + 1
    )
) as price_length from {{source('jaffle_shop', 'sample-data')}}),


final as (
  select * from source_data
)

select * from final