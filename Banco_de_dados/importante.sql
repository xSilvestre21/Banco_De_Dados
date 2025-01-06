use aulas;

insert into Funcionario (cod_func, nome_func) values (1, 'Juca');
insert into Funcionario (cod_func, nome_func) values (2, 'Miguel');
insert into Funcionario (cod_func, nome_func) values (3, 'Zila');

insert into Familiar (cod_fam, nome_fam, fk_Funcionario_cod_func) values (1, 'Huguinho', 1);
insert into Familiar (cod_fam, nome_fam,  fk_Funcionario_cod_func) values (2, 'Zezinho', 2);
insert into Familiar (cod_fam, nome_fam,  fk_Funcionario_cod_func) values (3, 'Luizinho', 2);
insert into Familiar (cod_fam, nome_fam,  fk_Funcionario_cod_func) values (4, 'Sephoora', null);

select fk_Funcionario_cod_func, cod_fam, nome_fam from familiar;

delete from familiar where cod_fam = 3;
update familiar set nome_fam = 'Gustavo' where cod_fam = 3;