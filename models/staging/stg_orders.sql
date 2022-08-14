select 
ro.customerid,
customername, 
segment, 
state,
ordercostprice,
orderdate,
orderid,
ordersellingprice__it as ordersellingprice,
p.productid,
p.productname,
p.category,
p.subcategory, 
shipdate,
shipmode,
ordersellingprice__it - ordercostprice as profit


from {{ ref('raw_order') }} as ro
left join {{ ref('raw_customer') }} as rc ON ro.customerid = rc.customerid
left join {{ ref('raw_product') }} as p ON p.productid = ro.productid

