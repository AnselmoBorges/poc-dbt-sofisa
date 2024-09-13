{{ config(
    materialized='table',
    schema='b'
) }}

SELECT *
FROM engenharia_nprd.dev.dados_salic