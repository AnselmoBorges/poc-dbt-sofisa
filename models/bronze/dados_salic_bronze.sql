{{ config(materialized="table", schema="b", alias="dados_salic") }}

WITH seed AS (
    SELECT *
    FROM {{ ref('dados') }}  -- Referencia a tabela seed 'dados'
)

select *
from seed
