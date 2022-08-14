{{
    config(
        materialized='table'
    )
}}

SELECT *
FROM CUSTOMERS.STITCHDBT.CUSTOMERS_TABLE