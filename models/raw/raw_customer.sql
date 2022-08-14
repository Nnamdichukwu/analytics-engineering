{{
    config(
        materialized='table'
    )
}}

SELECT *
FROM {{ source('stitchdbt', 'customers_table') }}