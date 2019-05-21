DROP TABLE IF EXISTS etapa_de_ensino CASCADE;
CREATE TABLE etapa_de_ensino
(
	codigo INT,
	nome_etapa VARCHAR(250),
	etapa_nao_matriculavel BOOLEAN NOT NULL,
	PRIMARY KEY (codigo)
);