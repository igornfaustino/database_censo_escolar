CREATE TABLE dias_semana(
    id_dia INT,
    dia CHAR(50),

    PRIMARY KEY (id_dia)
);

CREATE TABLE co_tipo_atividade(
    id_tipo INT,
    atividade INT,

    PRIMARY KEY (id_tipo)
);


CREATE TABLE tipo_inclusao(
    id_inclusao INT,
    inclusao CHAR(100),


    PRIMARY KEY (id_inclusao)
);

CREATE TABLE turma (
    id_turma INT,
    id_tp_tipo_turma SMALLINT,
    id_ETAPA_DE_ENSINO INT,
    id_MEDIACAO_DIDATICO_PEDAGO SMALLINT,


    no_turma CHAR(100),
    in_mais_educacao BOOLEAN,
    hora_inicio INT,
    minutro_inicio INT,
    nu_duracao_turma INT,
    qt_matriculas INT,
    in_especial_exclusiva BOOLEAN,
    in_regular BOOLEAN,
    in_eja BOOLEAN,
    in_profissionalizante BOOLEAN,
    nu_dias_atividade INT,


    PRIMARY KEY (id_turma),
    FOREIGN KEY (id_tp_tipo_turma) REFERENCES TIPO_TURMA(co_tipo_turma),
    FOREIGN KEY (id_ETAPA_DE_ENSINO) REFERENCES ETAPA_DE_ENSINO(id_etapa),
    FOREIGN KEY (id_MEDIACAO_DIDATICO_PEDAGO) REFERENCES MEDIACAO_DIDATICO_PEDAGO(co_mediacao_didatico_pedago)
);

CREATE TABLE turma_tipo_inclusao(
    id_turma_tipo_inclusao SERIAL,
    id_turma INT,
    id_tipo_inclusao INT,

    PRIMARY KEY (id_turma_tipo_inclusao),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma),
    FOREIGN KEY (id_tipo_inclusao) REFERENCES tipo_inclusao(id_inclusao)
);

CREATE TABLE turma_co_tipo_atividade(
    id_turma_tipo INT,
    id_co_tipo_atividade CHAR(50),
    id_turma INT,

    PRIMARY KEY (id_turma_tipo),
    FOREIGN KEY (id_co_tipo_atividade) REFERENCES co_tipo_atividade(id_tipo),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

CREATE TABLE dia_semana_turma(
    id_dia_semana_turma INT,
    id_dia_semana INT,
    id_turma INT,

    PRIMARY KEY (id_dia_semana_turma),
    FOREIGN KEY (id_dia_semana) REFERENCES dia_semana(id_dia),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);



CREATE TABLE turma_disciplina(
    id_turma_disciplina SERIAL,
    id_turma INT,
    id_disciplina INT,

    PRIMARY KEY(id_turma_disciplina),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma),
    FOREIGN KEY (id_tipo_materia) REFERENCES DISCIPLINA(ID_DISCIPLINA)

);


CREATE TABLE tipo_materia_etapa_ensino(
    id SERIAL,
    id_tipo_materia INT,
    id_ETAPA_DE_ENSINO INT,


    FOREIGN KEY(id_tipo_materia) REFERENCES DISCIPLINA(ID_DISCIPLINA),
    FOREIGN KEY(id_ETAPA_DE_ENSINO) REFERENCES ETAPA_DE_ENSINO(id_etapa)
);
