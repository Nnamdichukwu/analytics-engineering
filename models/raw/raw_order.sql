{{
    config(
        materialized='table'
    )
}}

SELECT *
FROM CUSTOMERS.STITCHDBT.ORDERS_TABLE