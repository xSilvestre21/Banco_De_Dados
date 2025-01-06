INSERT INTO catshop.vacina (cod_vacina,nome_vacina) VALUES
	 (1,'Polivalente'),
	 (2,'Raiva'),
	 (3,'FCV (Calicivírus Felino)'),
	 (4,'FIV (Aids felina)'),
	 (5,'FeLV (leucemia felina)'),
	 (6,'Dermatofitose');

INSERT INTO catshop.tutor (cod_tutor,nome_tutor,telefone) VALUES
	 (1,'Cármem','199999955550'),
	 (2,'João','199999955551'),
	 (3,'Carlos','199999955552'),
	 (4,'Fernando','199999955553'),
	 (5,'Jussara','199999955554'),
	 (6,'Jonas','199999955555');
	 
INSERT INTO catshop.gato (fk_cod_tutor,cod_gato,nome_gato,raca,cor) VALUES
	 (1,1,'Alfredo','Indefinida','Frajola'),
	 (2,2,'Aldebaran','Angorá','Branco'),
	 (2,3,'Ping','Siamês','Branco e preto'),
	 (4,4,'Aharon','Ragdoll','Preto'),
	 (5,5,'Mustafá','Maine Coom','Laranja'),
	 (6,6,'Cassiopeia','Persa','Azul');

INSERT INTO catshop.historico_de_vacinas (fk_cod_gato,fk_cod_vacina,data_aplic) VALUES
	 (3,6,'2024-02-01'),
	 (6,1,'2024-02-01'),
	 (1,4,'2024-02-01'),
	 (4,6,'2024-03-01'),
	 (1,6,'2024-03-01'),
	 (4,2,'2024-04-01'),
	 (1,5,'2024-04-01'),
	 (5,1,'2024-05-01'),
	 (1,1,'2024-06-01'),
	 (1,2,'2024-06-01');
	 
INSERT INTO catshop.historico_de_vacinas (fk_cod_gato,fk_cod_vacina,data_aplic) VALUES
	 (5,2,'2024-07-01'),
	 (6,2,'2024-07-01'),
	 (2,6,'2024-08-01'),
	 (3,5,'2024-08-01'),
	 (6,3,'2024-08-01'),
	 (3,1,'2024-09-01'),
	 (2,5,'2024-09-01'),
	 (4,1,'2024-09-01'),
	 (2,2,'2024-10-01'),
	 (6,4,'2024-10-01');
	 
INSERT INTO catshop.historico_de_vacinas (fk_cod_gato,fk_cod_vacina,data_aplic) VALUES
	 (1,3,'2024-11-01');
	 