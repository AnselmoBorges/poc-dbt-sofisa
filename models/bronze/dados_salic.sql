{{ config(
    materialized='table',
    schema='dev'
) }}

WITH seed AS (
    SELECT *
    FROM {{ ref('dados_salic') }}
)

SELECT *
FROM seed