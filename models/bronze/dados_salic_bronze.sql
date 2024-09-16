{{ config(materialized="table", schema="b", alias="dados_salic") }}

WITH seed AS (
    SELECT *
    FROM {{ ref('dados') }})

select *
from seed
