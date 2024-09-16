{{ config(materialized="table", schema="b") }}

WITH seed AS (
    SELECT *
    FROM {{ ref('dados') }}  -- Referencia a tabela seed 'dados'
)

select *
from seed
