/*

Query para publicar a tabela.

Esse é o lugar para:
    - modificar nomes, ordem e tipos de colunas
    - dar join com outras tabelas
    - criar colunas extras (e.g. logs, proporções, etc.)

Qualquer coluna definida aqui deve também existir em `table_config.yaml`.

# Além disso, sinta-se à vontade para alterar alguns nomes obscuros
# para algo um pouco mais explícito.

TIPOS:
    - Para modificar tipos de colunas, basta substituir STRING por outro tipo válido.
    - Exemplo: `SAFE_CAST(column_name AS NUMERIC) column_name`
    - Mais detalhes: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types

*/
SELECT 
SAFE_CAST(tipo_eleicao AS STRING) tipo_eleicao,
SAFE_CAST(turno AS STRING) turno,
SAFE_CAST(id_municipio_TSE AS STRING) id_municipio_TSE,
SAFE_CAST(numero_candidato AS STRING) numero_candidato,
SAFE_CAST(id_candidato_BD AS STRING) id_candidato_BD,
SAFE_CAST(cargo AS STRING) cargo,
SAFE_CAST(partido AS STRING) partido,
SAFE_CAST(resultado AS STRING) resultado,
SAFE_CAST(votos AS STRING) votos,
SAFE_CAST(ano AS STRING) ano,
SAFE_CAST(estado_abrev AS STRING) estado_abrev
from basedosdados-staging.br_tse_eleicoes_staging.resultados_candidato_municipio as t