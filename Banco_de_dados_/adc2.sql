use catshop;

/* 1 */
SELECT cod_tutor, nome_tutor 
FROM tutor
LEFT JOIN gato ON cod_tutor = fk_cod_tutor
WHERE fk_cod_tutor IS NULL;

/* 2 */
SELECT cod_gato, nome_gato
FROM gato
LEFT JOIN tutor ON fk_cod_tutor = cod_tutor
WHERE cod_tutor IS NULL;

/* 3 */
SELECT DISTINCT  cod_gato, nome_gato
FROM gato
JOIN vacina
LEFT JOIN historico_de_vacinas ON cod_gato = fk_cod_gato AND cod_vacina = fk_cod_vacina
WHERE fk_cod_vacina IS NULL;

/* 4 */
SELECT * FROM vacina
WHERE cod_vacina NOT IN (
SELECT cod_vacina
FROM vacina
LEFT JOIN historico_de_vacinas ON cod_vacina = fk_cod_vacina
LEFT JOIN gato ON fk_cod_gato = cod_gato
WHERE nome_gato = 'Ping');

/* 5 */
SELECT cod_vacina, nome_vacina
FROM vacina
LEFT JOIN historico_de_vacinas ON cod_vacina = fk_cod_vacina
LEFT JOIN gato ON fk_cod_gato = cod_gato
WHERE nome_gato = 'Aharon';

/* 6 */
SELECT nome_tutor, nome_gato 
FROM tutor
LEFT JOIN gato ON cod_tutor = fk_cod_tutor
WHERE fk_cod_tutor = cod_tutor;

/* 7 */
SELECT t.nome_tutor, g.nome_gato FROM gato g
LEFT JOIN historico_de_vacinas hv ON g.cod_gato = hv.fk_cod_gato
LEFT JOIN vacina v ON hv.fk_cod_vacina = v.cod_vacina
LEFT JOIN tutor t ON t.cod_tutor = g.fk_cod_tutor
GROUP BY g.cod_gato, g.nome_gato
HAVING COUNT(DISTINCT v.cod_vacina) = (SELECT COUNT(*) FROM vacina);

/* 8 */
SELECT t.nome_tutor, g.nome_gato FROM gato g
LEFT JOIN historico_de_vacinas hv ON g.cod_gato = hv.fk_cod_gato
LEFT JOIN vacina v ON hv.fk_cod_vacina = v.cod_vacina
LEFT JOIN tutor t ON t.cod_tutor = g.fk_cod_tutor
GROUP BY g.cod_gato, g.nome_gato
HAVING COUNT(DISTINCT v.cod_vacina) < (SELECT COUNT(*) FROM vacina);

/* 9 */
SELECT nome_tutor, cod_tutor
FROM tutor
LEFT JOIN gato ON cod_tutor = fk_cod_tutor
LEFT JOIN historico_de_vacinas ON cod_gato = fk_cod_gato
LEFT JOIN vacina ON cod_vacina = fk_cod_vacina
WHERE nome_vacina = 'FIV (Aids felina)';


/*10*/
SELECT cod_tutor, nome_tutor FROM tutor
WHERE cod_tutor NOT IN (
SELECT cod_tutor
FROM tutor
LEFT JOIN gato ON cod_tutor = fk_cod_tutor
LEFT JOIN historico_de_vacinas ON cod_gato = fk_cod_gato
LEFT JOIN vacina ON cod_vacina = fk_cod_vacina
WHERE nome_vacina = 'FeLV (leucemia felina)');








