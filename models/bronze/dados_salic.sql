{{ config(
    materialized='table',
    schema='b'
) }}

WITH seed AS (
    SELECT *
    FROM engenharia_nprd.dev.dados_salic
)

SELECT *
FROM seed