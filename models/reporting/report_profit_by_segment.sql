SELECT

segment,
count(*) as no_of_purchases,
sum(profit) as profit

FROM {{ref('stg_orders')}}
GROUP BY segment
order by profit desc