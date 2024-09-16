{{ config(materialized="table", schema="s") }}

WITH SILVER AS (
    SELECT 
        CNPJCPF, 
        UPPER(Incentivador) AS INCENTIVADOR,
        NRO_Projeto AS NRO_PROJETO,
        UPPER(Nome_do_Projeto) AS NOME_PROJETO,
        UPPER(UF_do_Projeto) AS UF_PROJETO,
        ROUND(Vl_Incentivo_em_reais, 2) AS VL_INCENTIVO,
        ano AS ANO
    FROM {{ ref('bronze.dados_salic') }}  -- Referencia a tabela seed 'dados'
)

select *
from SILVER
