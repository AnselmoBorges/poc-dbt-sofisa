{{ config(materialized="table", schema="g") }}

WITH INC_EMPRESA AS (
    SELECT 
        INCENTIVADOR,
        SUM(VL_INCENTIVO) AS TOTAL_INCENTIVO
    FROM {{ ref('dados_salic_silver') }}
    GROUP BY
        INCENTIVADOR
    ORDER BY
        TOTAL_INCENTIVO DESC
    LIMIT 5
)

select *
from INC_EMPRESA