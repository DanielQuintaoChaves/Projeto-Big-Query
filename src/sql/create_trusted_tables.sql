CREATE OR REPLACE TABLE `ps-eng-dados-*SECRET*.icf_icc_trusted` AS
SELECT
    ano_mes,
    indice,
    variacao_mes,
    variacao_ano,
    load_timestamp
FROM `ps-eng-dados*SECRET*.icc_raw`
WHERE indice IS NOT NULL       -- Exclui índices nulos
GROUP BY ano_mes, indice, variacao_mes, variacao_ano, load_timestamp;

CREATE OR REPLACE TABLE `ps-eng-dados*SECRET*.icf_trusted` AS
SELECT
    ano_mes,
    indice,
    variacao_mes,
    variacao_ano,
    load_timestamp
FROM `ps-eng-dados-*SECRET*.icf_raw`
WHERE indice IS NOT NULL       -- Exclui índices nulos
GROUP BY ano_mes, indice, variacao_mes, variacao_ano, load_timestamp;
