SELECT 
orderid,
DATEDIFF(minute, orderdate, shipdate) as time_diff
from {{ ref('raw_order') }}
GROUP BY orderid, orderdate, shipdate
having time_diff <0