select
orderid,
sum(ordersellingprice__it) as total_sp
from {{ ref('raw_order') }}

GROUP BY orderid
having total_sp < 0