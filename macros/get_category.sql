{% macro get_colum_values(columnname, tablename) %}
{%set column_value%}
 select 
 distinct
 {{columnname}}
 from {{tablename}}
{% endset%}
{% endmacro %}
{% set results = run_query(column_value) %}

{% if execute %}
{# Return the first column #}
{% set results_list = results.columns[0].values() %}
{% else %}
{% set results_list = [] %}
{% endif %}

{{ return(results_list) }}

{% macro get_category_query() %}
return (get_colum_values('category', {{ref('stg_orders')}}))
    
{% endmacro %}