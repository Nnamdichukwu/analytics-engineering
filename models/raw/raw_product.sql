{{
    config(
        materialized='table'
    )
}}

SELECT *
FROM {{ source('stitchdbt', 'product_table') }}