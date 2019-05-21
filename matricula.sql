DROP TABLE IF EXISTS matricula CASCADE;
CREATE TABLE matricula
(
    id_matricula INT,
    -- TODO: FK para escola
    co_entidade INT,
    co_regiao INT,
    co_mesorregiao INT,
    co_microrregia0 INT,
    co_uf INT,
    co_municipio INT,
    co_distrito INT,
    PRIMARY KEY (id_matricula),
    -- FOREIGN KEY (co_entidade, co_regiao,co_mesorregiao, co_microrregiao, co_uf, co_municipio, co_distrito) REFERENCES escola(co_entidade, co_regiao,co_mesorregiao, co_microrregiao, co_uf, co_municipio, co_distrito)
);

DROP TABLE IF EXISTS sexo  CASCADE;
CREATE TABLE sexo
(
    sexo VARCHAR(15),
    PRIMARY KEY (sexo)
);

DROP TABLE IF EXISTS cor_raca CASCADE;
CREATE TABLE cor_raca
(
    cor_raca VARCHAR(15),
    PRIMARY KEY (cor_raca)
);

DROP TABLE IF EXISTS nacionalidade CASCADE;
CREATE TABLE nacionalidade
(
    nacionalidade VARCHAR(30),
    PRIMARY KEY (nacionalidade)
);

DROP TABLE IF EXISTS co_pais CASCADE;
CREATE TABLE co_pais
(
    co_pais int,
    PRIMARY KEY (co_pais)
);

DROP TABLE IF EXISTS zona_residencial CASCADE;
CREATE TABLE zona_residencial
(
    zona_residencial VARCHAR(10),
    PRIMARY KEY (zona_residencial)
);

DROP TABLE IF EXISTS outro_local CASCADE;
CREATE TABLE outro_local
(
    nome VARCHAR(10),
    PRIMARY KEY (nome)
);

DROP TABLE IF EXISTS tipo_ingresso_federal CASCADE;
CREATE TABLE tipo_ingresso_federal
(
    nome VARCHAR(10),
    PRIMARY KEY (nome)
);

DROP TABLE IF EXISTS tipo_mediacao_didatico_pedago CASCADE;
CREATE TABLE tipo_mediacao_didatico_pedago
(
    nome VARCHAR(10),
    PRIMARY KEY (nome)
);

DROP TABLE IF EXISTS aluno CASCADE;
CREATE TABLE aluno
(
    id_aluno INT NOT NULL UNIQUE,
    id_matricula INT NOT NULL,
    data_nascimento DATE NOT NULL,
    nu_idade_referencia SMALLINT NOT NULL,
    nu_idade SMALLINT NOT NULL,
    sexo VARCHAR(15) NOT NULL,
    cor_raca VARCHAR(15) NOT NULL,
    nacionalidade VARCHAR(30) NOT NULL,
    co_pais_origen int,
    co_uf_nasc int,
    co_municipio_nasc int,
    co_uf_end int NOT NULL,
    co_municipio_end INT NOT NULL,
    tp_zona_residencial VARCHAR(10) NOT NULL,
    tp_outro_local_aula VARCHAR(10),
    tp_ingresso_federais VARCHAR(30),
    tp_mediacao_didatico_pedago VARCHAR(30),
    in_especial_exclusiva BOOLEAN NOT NULL,
    in_regular BOOLEAN NOT NULL,
    in_eja BOOLEAN NOT NULL,
    in_profissionalizante BOOLEAN NOT NULL,
    -- TODO: fk etapa ensino
    codigo INT REFERENCES etapa_de_ensino(codigo),
    PRIMARY KEY (id_aluno, id_matricula),
    FOREIGN KEY (id_matricula) REFERENCES matricula(id_matricula) ON DELETE CASCADE,
    FOREIGN KEY (sexo) REFERENCES sexo(sexo),
    FOREIGN KEY (cor_raca) REFERENCES cor_raca(cor_raca),
    FOREIGN KEY (nacionalidade) REFERENCES nacionalidade(nacionalidade),
    FOREIGN KEY (co_pais_origen) REFERENCES co_pais(co_pais),
    FOREIGN KEY (tp_outro_local_aula) REFERENCES outro_local(nome),
    FOREIGN KEY (tp_ingresso_federais) REFERENCES tipo_ingresso_federal(nome),
    FOREIGN KEY (tp_mediacao_didatico_pedago) REFERENCES tipo_mediacao_didatico_pedago(nome)
);

DROP TABLE IF EXISTS tp_responsavel_transporte CASCADE;
CREATE TABLE tp_responsavel_transporte
(
    nome VARCHAR(20),
    PRIMARY KEY (nome)
);

DROP TABLE IF EXISTS veiculo CASCADE;
CREATE TABLE veiculo
(
    tipo VARCHAR(20),
    PRIMARY KEY (tipo)
);

DROP TABLE IF EXISTS transporte_publico CASCADE;
CREATE TABLE transporte_publico
(
    tp_responsavel_transporte VARCHAR(20),
    id_aluno INT NOT NULL,
    id_matricula INT NOT NULL,
    PRIMARY KEY (tp_responsavel_transporte, id_aluno, id_matricula),
    FOREIGN KEY (tp_responsavel_transporte) REFERENCES tp_responsavel_transporte(nome),
    FOREIGN KEY (id_aluno, id_matricula) REFERENCES aluno(id_aluno, id_matricula)
);

DROP TABLE IF EXISTS transporte_veiculo CASCADE;
CREATE TABLE transporte_veiculo
(
    tp_responsavel_transporte VARCHAR(20),
    id_aluno INT NOT NULL,
    id_matricula INT NOT NULL,
    tipo_veiculo VARCHAR(20) NOT NULL,
    PRIMARY KEY (tipo_veiculo, tp_responsavel_transporte, id_aluno, id_matricula),
    FOREIGN KEY (tipo_veiculo) REFERENCES veiculo(tipo),
    FOREIGN KEY (tp_responsavel_transporte, id_aluno, id_matricula) REFERENCES transporte_publico(tp_responsavel_transporte, id_aluno, id_matricula)
);

DROP TABLE IF EXISTS necessidade_especial CASCADE;
CREATE TABLE necessidade_especial
(
    necessidade INT, 
    id_aluno INT NOT NULL,
    id_matricula INT NOT NULL,
    PRIMARY KEY (necessidade, id_aluno, id_matricula),
    FOREIGN KEY (id_aluno, id_matricula) REFERENCES aluno(id_aluno, id_matricula)
);

DROP TABLE IF EXISTS doenca CASCADE;
CREATE TABLE doenca
(
    tipo VARCHAR(20),
    PRIMARY KEY (tipo)
);

DROP TABLE IF EXISTS recurso CASCADE;
CREATE TABLE recurso
(
    tipo VARCHAR(20),
    PRIMARY KEY (tipo)
);

DROP TABLE IF EXISTS necessidade_doenca CASCADE;
CREATE TABLE necessidade_doenca
(
    doenca VARCHAR(20),
    necessidade INT, 
    id_aluno INT NOT NULL,
    id_matricula INT NOT NULL,
    tipo_veiculo VARCHAR(20) NOT NULL,
    PRIMARY KEY (doenca, id_aluno, id_matricula, necessidade),
    FOREIGN KEY (doenca) REFERENCES doenca(tipo),
    FOREIGN KEY (necessidade, id_aluno, id_matricula) REFERENCES necessidade_especial(necessidade, id_aluno, id_matricula)
);

DROP TABLE IF EXISTS necessidade_recurso CASCADE;
CREATE TABLE necessidade_recurso
(
    recurso VARCHAR(20),
    necessidade INT, 
    id_aluno INT NOT NULL,
    id_matricula INT NOT NULL,
    tipo_veiculo VARCHAR(20) NOT NULL,
    PRIMARY KEY (recurso, id_aluno, id_matricula, necessidade),
    FOREIGN KEY (recurso) REFERENCES recurso(tipo),
    FOREIGN KEY (necessidade, id_aluno, id_matricula) REFERENCES necessidade_especial(necessidade, id_aluno, id_matricula)
);

DROP TABLE IF EXISTS aluno_turma CASCADE;
CREATE TABLE aluno_turma
(
    id_turma INT NOT NULL,
    id_aluno INT NOT NULL,
    id_matricula INT NOT NULL,
    nu_duracao_turma INT,
    nu_dur_ativ_comp_mesma_rede INT,
    nu_dur_ativ_comp_outras_redes INT,
    nu_dur_aee_mesma_rede INT,
    nu_dur_aee_outras_redes INT,
    nu_dias_atividade INT,
    PRIMARY KEY (id_turma, id_aluno, id_matricula),
    FOREIGN KEY (id_aluno, id_matricula) REFERENCES aluno(id_aluno, id_matricula),
    -- TODO:
    -- FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
)