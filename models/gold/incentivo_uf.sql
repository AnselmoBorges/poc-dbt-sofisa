{{ config(materialized="view", schema="g") }}

WITH INCENTIVO_UF AS (
    SELECT 
        UF_PROJETO,
        SUM(VL_INCENTIVO) AS TOTAL_INCENTIVO
    FROM {{ ref('dados_salic_silver') }}
    GROUP BY
        UF_PROJETO
    ORDER BY
        TOTAL_INCENTIVO DESC
    LIMIT 5
)

select *
from INCENTIVO_UF