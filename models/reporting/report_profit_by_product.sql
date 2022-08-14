SELECT
productid,
productname,
category,
subcategory,
count(*) as no_of_purchases, 
sum(profit) as profit
FROM {{ ref('stg_orders') }}
GROUP BY productid,
productname,
category,
subcategory

ORDER BY profit desc