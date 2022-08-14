SELECT 
customerid,
customername,
state,
segment,
count(*) as no_of_txns,
sum(profit) as profit
FROM 
{{ ref('stg_orders') }}
group by 
customerid,
customername,
state,
segment

--ORDER BY profit desc