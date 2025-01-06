use aulas;
--
insert into Produto (cod_prod, nome_prod, valor_custo, valor_venda) values (1, 'prod_1', 24, 46);
insert into Produto (cod_prod, nome_prod, valor_custo, valor_venda) values (2, 'prod_2', 12, 42);
insert into Produto (cod_prod, nome_prod, valor_custo, valor_venda) values (3, 'prod_3', 26, 53);
insert into Produto (cod_prod, nome_prod, valor_custo, valor_venda) values (4, 'prod_4', 14, 52);
insert into Produto (cod_prod, nome_prod, valor_custo, valor_venda) values (5, 'prod_5', 30, 45);
--
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (101, 2007, 'Pessoa_101');
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (102, 2002, 'Pessoa_102');
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (103, 1986, 'Pessoa_103');
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (104, 1980, 'Pessoa_104');
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (105, 1969, 'Pessoa_105');
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (201, 1973, 'Pessoa_201');
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (202, 1994, 'Pessoa_202');
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (203, 1991, 'Pessoa_203');
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (204, 1987, 'Pessoa_204');
insert into Pessoa (cpf, ano_nasc, nome_pessoa) values (205, 1981, 'Pessoa_205');
--
insert into Cliente (cod_cli, fk_cpf) values (1, 101);
insert into Cliente (cod_cli, fk_cpf) values (2, 102);
insert into Cliente (cod_cli, fk_cpf) values (3, 103);
insert into Cliente (cod_cli, fk_cpf) values (4, 104);
insert into Cliente (cod_cli, fk_cpf) values (5, 105);
--
insert into Vendedor (cod_vendedor, fk_cpf) values (1, 201);
insert into Vendedor (cod_vendedor, fk_cpf) values (2, 202);
insert into Vendedor (cod_vendedor, fk_cpf) values (3, 203);
insert into Vendedor (cod_vendedor, fk_cpf) values (4, 204);
insert into Vendedor (cod_vendedor, fk_cpf) values (5, 205);
--
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (1, 2020, 3, 2, 1);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (2, 2021, 4, 3, 1);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (3, 2018, 1, 2, 1);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (4, 2020, 1, 3, 1);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (5, 2019, 2, 4, 1);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (6, 2022, 4, 4, 1);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (7, 2018, 3, 2, 4);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (8, 2021, 3, 1, 3);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (9, 2022, 1, 3, 4);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (10, 2019, 3, 3, 5);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (11, 2022, 4, 5, 3);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (12, 2020, 5, 4, 3);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (13, 2021, 2, 3, 5);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (14, 2020, 2, 2, 5);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (15, 2019, 4, 1, 5);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (16, 2021, 4, 2, 5);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (17, 2022, 1, 5, 4);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (18, 2022, 1, 1, 3);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (19, 2018, 4, 2, 3);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (20, 2018, 4, 1, 4);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (21, 2019, 5, 1, 5);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (22, 2019, 3, 5, 5);
insert into Hist_Vendas (cod_venda, ano_venda, fk_cod_vendedor, fk_cod_cli, fk_cod_prod) values (23, 2020, 4, 3, 5);
