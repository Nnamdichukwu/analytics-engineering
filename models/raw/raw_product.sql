{{
    config(
        materialized='table'
    )
}}

SELECT *
FROM CUSTOMERS.STITCHDBT.PRODUCT_TABLE