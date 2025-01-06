
CREATE DATABASE catshop;

CREATE TABLE tutor (
  cod_tutor int(11) NOT NULL,
  nome_tutor varchar(50) NOT NULL,
  telefone varchar(14) DEFAULT NULL,
  PRIMARY KEY (cod_tutor)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;


CREATE TABLE vacina (
  cod_vacina int(11) NOT NULL,
  nome_vacina varchar(50) NOT NULL,
  PRIMARY KEY (cod_vacina)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

CREATE TABLE gato (
  fk_cod_tutor int(11) DEFAULT NULL,
  cod_gato int(11) NOT NULL,
  nome_gato varchar(50) NOT NULL,
  raca varchar(50) DEFAULT NULL,
  cor varchar(50) DEFAULT NULL,
  PRIMARY KEY (cod_gato),
  KEY fk_cod_tutor (fk_cod_tutor),
  CONSTRAINT gato_ibfk_1 FOREIGN KEY (fk_cod_tutor) REFERENCES tutor (cod_tutor)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

CREATE TABLE historico_de_vacinas (
  cod_hist int(11) NOT NULL AUTO_INCREMENT,
  fk_cod_gato int(11) DEFAULT NULL,
  fk_cod_vacina int(11) DEFAULT NULL,
  data_aplic date DEFAULT NULL,
  PRIMARY KEY (cod_hist),
  KEY fk_cod_gato (fk_cod_gato),
  KEY fk_cod_vacina (fk_cod_vacina),
  CONSTRAINT historico_de_vacinas_ibfk_1 FOREIGN KEY (fk_cod_gato) REFERENCES gato (cod_gato),
  CONSTRAINT historico_de_vacinas_ibfk_2 FOREIGN KEY (fk_cod_vacina) REFERENCES vacina (cod_vacina)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=ujis;
