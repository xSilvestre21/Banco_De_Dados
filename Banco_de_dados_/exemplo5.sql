USE aulas;
SELECT nome_prod, valor_custo, valor_venda, (valor_venda - valor_custo)margem
FROM produto