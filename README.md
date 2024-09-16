# Bem-vindo!

Bem-vindo à documentação gerada automaticamente para o seu projeto dbt!

## Navegação

Você pode usar as abas de navegação **Projeto** e **Banco de Dados** no lado esquerdo da janela para explorar os modelos em seu projeto.

### Aba Projeto

A aba **Projeto** espelha a estrutura de diretórios do seu projeto dbt. Nesta aba, você pode ver todos os modelos definidos em seu projeto dbt, bem como modelos importados de pacotes dbt.

### Aba Banco de Dados

A aba **Banco de Dados** também expõe seus modelos, mas em um formato que se assemelha mais a um explorador de banco de dados. Esta visualização mostra relações (tabelas e views) agrupadas em esquemas de banco de dados. Note que modelos efêmeros não são mostrados nesta interface, pois eles não existem no banco de dados.

## Exploração de Grafo

Você pode clicar no ícone azul no canto inferior direito da página para visualizar o grafo de linhagem dos seus modelos.

Nas páginas de modelos, você verá os pais e filhos imediatos do modelo que está explorando. Ao clicar no botão **Expandir** no canto superior direito deste painel de linhagem, você poderá ver todos os modelos que são usados para construir, ou são construídos a partir do modelo que está explorando.

Uma vez expandido, você poderá usar a sintaxe de seleção de modelos `--select` e `--exclude` para filtrar os modelos no grafo. Para mais informações sobre a seleção de modelos, confira a [documentação do dbt](https://docs.getdbt.com/docs/building-a-dbt-project/building-models).

Note que você também pode clicar com o botão direito nos modelos para filtrar e explorar o grafo interativamente.

## Exemplos de Consultas SQL para Insights

Aqui estão alguns exemplos de consultas SQL que você pode usar para gerar insights a partir dos seus dados:

### Total de Incentivos por Ano
```sql
SELECT
    ano,
    SUM(Vl_Incentivo_em_reais) AS total_incentivo
FROM
    dados
GROUP BY
    ano
ORDER BY
    total_incentivo DESC
LIMIT 5;
```

