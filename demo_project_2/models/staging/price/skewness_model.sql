with price_num as (
    select CAST(price as BIGNUMERIC) as price from `dbt-scotia-demo.demo_data.sample-data`
),

ordered_price as (
    select
        price,
        avg(price) as mean_value,
        row_number() over (order by price) as row_id,
        (select count(price) from price_num) as ct
    from price_num GROUP BY price
),

median_value as (
  select AVG(price) as median from ordered_price where row_id between ct/2.0 and ct/2.0 + 1)


SELECT (3 * (avg(w.price) - v.median)) / stddev(w.price) as pearson_coeff

FROM ordered_price w, median_value v
GROUP BY v.median