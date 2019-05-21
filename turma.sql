CREATE TABLE tipo_turma(
    id_tipo CHAR(50),
    PRIMARY KEY (id_tipo)
);

CREATE TABLE mediacao_didatico_pedago(
    id_mediacao_didatico CHAR(50),

    PRIMARY KEY (id_mediacao_didatico)
);

CREATE TABLE dias_semana(
    id_dia CHAR(50),

    PRIMARY KEY (id_dia)
);

CREATE TABLE tipo_atividade(
    id_tipo CHAR(50),

    PRIMARY KEY (id_tipo)
);


CREATE TABLE tipo_inclusao(
    id_inclusao CHAR(50),


    PRIMARY KEY (id_inclusao)
);

CREATE TABLE turma (
    id_turma INT,
    id_tipo_turma INT,
    id_etapa_de_ensino INT,
    id_mediacao_didatico_pedago CHAR(50),



    in_mais_educacao BOOLEAN,
    hora_inicio DATE,
    nu_duracao_turma INT,
    qt_matriculas INT,
    in_especial_exclusiva BOOLEAN,
    in_regular BOOLEAN,
    in_eja BOOLEAN,
    in_profissionalizante BOOLEAN,
    num_dias_atividades INT,
    in_enriq_curricular BOOLEAN,
    in_soroban BOOLEAN,
    in_autonomia_escolar BOOLEAN,

    PRIMARY KEY (id_turma),
    FOREIGN KEY (id_tipo_turma) REFERENCES tipo_turma(id_tipo),
    FOREIGN KEY (id_etapa_de_ensino) REFERENCES etapa_de_ensino(id_etapa),
    FOREIGN KEY (id_mediacao_didatico_pedago) REFERENCES mediacao_didatico_pedago(id_mediacao_didatico)

);

CREATE TABLE turma_tipo_inclusao(
    id_turma_tipo_inclusao INT,
    id_turma INT,
    id_tipo_inclusao CHAR(50),

    PRIMARY KEY (id_turma_tipo_inclusao),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma),
    FOREIGN KEY (id_tipo_inclusao) REFERENCES tipo_inclusao(id_inclusao)
);

CREATE TABLE turma_tipo_atividade(
    id_turma_tipo INT,
    id_tipo_atividade CHAR(50),
    id_turma INT,

    PRIMARY KEY (id_turma_tipo),
    FOREIGN KEY (id_tipo_atividade) REFERENCES tipo_atividade(id_tipo),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

CREATE TABLE dia_semana_turma(
    id_dia_semana_turma INT,
    id_dia_semana CHAR(50),
    id_turma INT,

    PRIMARY KEY (id_dia_semana_turma),
    FOREIGN KEY (id_dia_semana) REFERENCES dia_semana(id_dia),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);


CREATE TABLE tipo_materia(
    id_materia CHAR(50),
    PRIMARY KEY (id_materia)

);


CREATE TABLE turma_tipo_materia(
    id_turma_tipo_materia INT,
    id_turma INT,
    id_tipo_materia CHAR(50),

    PRIMARY KEY(id_turma_tipo_materia),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma),
    FOREIGN KEY (id_tipo_materia) REFERENCES tipo_materia(id_materia)

);


CREATE TABLE tipo_materia_etapa_ensino(
    id_tipo_materia CHAR(50),
    id_etapa_de_ensino CHAR(50),


    PRIMARY KEY(id_tipo_materia),
    FOREIGN KEY(id_etapa_de_ensino) REFERENCES etapa_de_ensino(id_etapa)
);
