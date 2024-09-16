{{ config(materialized="table", schema="b") }}

with seed as (select * from engenharia_nprd.dev.dados_salic)

select *
from seed
