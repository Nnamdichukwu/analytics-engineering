{{
    config(
        materialized='table'
    )
}}

SELECT *
FROM {{ source('stitchdbt', 'orders_table') }}