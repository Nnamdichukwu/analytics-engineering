{%- set category= ["Furniture", "Office", "Technology"] -%}
select
orderid,
{% for i in category %}
sum(case when category= '{{i}}' then profit else 0 end) as {{i}}_profit
{%if not loop.last%}, {% endif %}
{% endfor%}
from {{ ref('stg_orders') }}
group by orderid