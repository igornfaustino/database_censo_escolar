
--------------------- DEVEM SER POPULADAS -------------------------------------------

DROP TABLE IF EXISTS MUNICIPIO CASCADE; -- CRIADA
CREATE TABLE MUNICIPIO(
    CO_MUNICIPIO INT NOT NULL UNIQUE,
    MUNICIPIO VARCHAR(100),

    PRIMARY KEY(CO_MUNICIPIO)
);

DROP TABLE IF EXISTS UF CASCADE; -- CRIADA
CREATE TABLE UF(
    CO_UF INT NOT NULL UNIQUE,
    UF VARCHAR(2),

    PRIMARY KEY(CO_UF)
);

DROP TABLE IF EXISTS INSTITUICAO_ENSINO CASCADE; -- CRIADA
CREATE TABLE INSTITUICAO_ENSINO(
    CO_IES INT NOT NULL UNIQUE,
    INSTITUICAO_ENSINO VARCHAR(100),

    PRIMARY KEY(CO_IES)
);

DROP TABLE IF EXISTS TIPO_IES CASCADE; -- CRIADA
CREATE TABLE TIPO_IES(
    CO_TIPO_IES INT NOT NULL UNIQUE,
    TIPO_IES VARCHAR(100),

    PRIMARY KEY(CO_TIPO_IES)
);

DROP TABLE IF EXISTS AREA_CURSO CASCADE; -- CRIADA
CREATE TABLE AREA_CURSO(
    CO_AREA_CURSO INT NOT NULL UNIQUE,
    AREA_CURSO VARCHAR(100),

    PRIMARY KEY(CO_AREA_CURSO)
);

DROP TABLE IF EXISTS CURSO CASCADE; -- CRIADA
CREATE TABLE CURSO(
    CO_CURSO INT NOT NULL UNIQUE,
    CURSO VARCHAR(100),

    PRIMARY KEY(CO_CURSO)
);

DROP TABLE IF EXISTS DEFICIENCIA CASCADE; -- CRIADA
CREATE TABLE DEFICIENCIA(
    ID_DEFICIENCIA INT NOT NULL UNIQUE,
    DEFICIENCIA VARCHAR(100),

    PRIMARY KEY(ID_DEFICIENCIA)
);


--------------------- TABLES -------------------------------------------

DROP TABLE IF EXISTS DISCIPLINA CASCADE; -- CRIADA
CREATE TABLE DISCIPLINA(
    ID_DISCIPLINA INT NOT NULL UNIQUE,
    DISCIPLINA VARCHAR(50),

    PRIMARY KEY(ID_DISCIPLINA)
);
INSERT INTO DISCIPLINA VALUES (1, 'IN_DISC_QUIMICA');
INSERT INTO DISCIPLINA VALUES (2, 'IN_DISC_FISICA');
INSERT INTO DISCIPLINA VALUES (3, 'IN_DISC_MATEMATICA');
INSERT INTO DISCIPLINA VALUES (4, 'IN_DISC_BIOLOGIA');
INSERT INTO DISCIPLINA VALUES (5, 'IN_DISC_CIENCIAS');
INSERT INTO DISCIPLINA VALUES (6, 'IN_DISC_LINGUA_PORTUGUESA');
INSERT INTO DISCIPLINA VALUES (7, 'IN_DISC_LINGUA_INGLES');
INSERT INTO DISCIPLINA VALUES (8, 'IN_DISC_LINGUA_ESPANHOL');
INSERT INTO DISCIPLINA VALUES (9, 'IN_DISC_LINGUA_FRANCES');
INSERT INTO DISCIPLINA VALUES (10, 'IN_DISC_LINGUA_OUTRA');
INSERT INTO DISCIPLINA VALUES (11, 'IN_DISC_LINGUA_INDIGENA');
INSERT INTO DISCIPLINA VALUES (12, 'IN_DISC_ARTES');
INSERT INTO DISCIPLINA VALUES (13, 'IN_DISC_EDUCACAO_FISICA');
INSERT INTO DISCIPLINA VALUES (14, 'IN_DISC_HISTORIA');
INSERT INTO DISCIPLINA VALUES (15, 'IN_DISC_GEOGRAFIA');
INSERT INTO DISCIPLINA VALUES (16, 'IN_DISC_FILOSOFIA');
INSERT INTO DISCIPLINA VALUES (17, 'IN_DISC_ENSINO_RELIGIOSO');
INSERT INTO DISCIPLINA VALUES (18, 'IN_DISC_ESTUDOS_SOCIAIS');
INSERT INTO DISCIPLINA VALUES (19, 'IN_DISC_SOCIOLOGIA');
INSERT INTO DISCIPLINA VALUES (20, 'IN_DISC_EST_SOCIAIS_SOCIOLOGIA');
INSERT INTO DISCIPLINA VALUES (21, 'IN_DISC_INFORMATICA_COMPUTACAO');
INSERT INTO DISCIPLINA VALUES (22, 'IN_DISC_PROFISSIONALIZANTE');
INSERT INTO DISCIPLINA VALUES (23, 'IN_DISC_ATENDIMENTO_ESPECIAIS');
INSERT INTO DISCIPLINA VALUES (24, 'IN_DISC_DIVER_SOCIO_CULTURAL');
INSERT INTO DISCIPLINA VALUES (25, 'IN_DISC_LIBRAS');
INSERT INTO DISCIPLINA VALUES (26, 'IN_DISC_PEDAGOGICAS');
INSERT INTO DISCIPLINA VALUES (27, 'IN_DISC_OUTRAS');

DROP TABLE IF EXISTS OUTROS_CURSOS CASCADE; --CRIADA
CREATE TABLE OUTROS_CURSOS(
    ID_OUTROS_CURSOS INT NOT NULL UNIQUE,
    CURSO_ESPECIFICO_DE VARCHAR(50),

    PRIMARY KEY(ID_OUTROS_CURSOS)
);
INSERT INTO OUTROS_CURSOS VALUES (1, 'IN_ESPECIFICO_CRECHE');
INSERT INTO OUTROS_CURSOS VALUES (2, 'IN_ESPECIFICO_PRE_ESCOLA');
INSERT INTO OUTROS_CURSOS VALUES (3, 'IN_ESPECIFICO_ANOS_INICIAIS');
INSERT INTO OUTROS_CURSOS VALUES (4, 'IN_ESPECIFICO_ANOS_FINAIS');
INSERT INTO OUTROS_CURSOS VALUES (5, 'IN_ESPECIFICO_ENS_MEDIO');
INSERT INTO OUTROS_CURSOS VALUES (6, 'IN_ESPECIFICO_EJA');
INSERT INTO OUTROS_CURSOS VALUES (7, 'IN_ESPECIFICO_ED_ESPECIAL');
INSERT INTO OUTROS_CURSOS VALUES (8, 'IN_ESPECIFICO_ED_INDIGENA');
INSERT INTO OUTROS_CURSOS VALUES (9, 'IN_ESPECIFICO_CAMPO');
INSERT INTO OUTROS_CURSOS VALUES (10, 'IN_ESPECIFICO_AMBIENTAL');
INSERT INTO OUTROS_CURSOS VALUES (11, 'IN_ESPECIFICO_DIR_HUMANOS');
INSERT INTO OUTROS_CURSOS VALUES (12, 'IN_ESPECIFICO_DIV_SEXUAL');
INSERT INTO OUTROS_CURSOS VALUES (13, 'IN_ESPECIFICO_DIR_ADOLESC');
INSERT INTO OUTROS_CURSOS VALUES (14, 'IN_ESPECIFICO_AFRO');
INSERT INTO OUTROS_CURSOS VALUES (15, 'IN_ESPECIFICO_OUTROS');
INSERT INTO OUTROS_CURSOS VALUES (16, 'IN_ESPECIFICO_NENHUM');

DROP TABLE IF EXISTS POS_GRADUCAO CASCADE; --CRIADA
CREATE TABLE POS_GRADUCAO(
    ID_POS_GRADUCAO INT NOT NULL UNIQUE,
    POS_GRADUCAO VARCHAR(50),

    PRIMARY KEY(ID_POS_GRADUCAO)
);
INSERT INTO POS_GRADUCAO VALUES (1, 'IN_ESPECIALIZACAO');
INSERT INTO POS_GRADUCAO VALUES (2, 'IN_MESTRADO');
INSERT INTO POS_GRADUCAO VALUES (3, 'IN_DOUTORADO');
INSERT INTO POS_GRADUCAO VALUES (4, 'IN_POS_NENHUM');


DROP TABLE IF EXISTS ENDERECO CASCADE; -- CRIADA
CREATE TABLE ENDERECO(
    CO_UF_END INT NOT NULL,
    CO_MUNICIPIO_END INT NOT NULL,
    TP_ZONA_RESIDENCIAL INT NOT NULL,

    PRIMARY KEY(CO_UF_END, CO_MUNICIPIO_END, TP_ZONA_RESIDENCIAL),

    CONSTRAINT FKEY_CO_MUNICIPIO FOREIGN KEY (CO_MUNICIPIO_END)
        REFERENCES MUNICIPIO(CO_MUNICIPIO),
    CONSTRAINT FKEY_CO_UF FOREIGN KEY (CO_UF_END)
        REFERENCES UF(CO_UF),
    CONSTRAINT FKEY_TP_ZONA_RESIDENCIAL FOREIGN KEY (TP_ZONA_RESIDENCIAL)
        REFERENCES ZONA_RESIDENCIAL(CO_ZONA_RESIDENCIAL)
);

DROP TABLE IF EXISTS LOCAL_NASC CASCADE; --CRIADA
CREATE TABLE LOCAL_NASC(
    CO_PAIS_ORIGEM INT NOT NULL,
    TP_NACIONALIDADE INT NOT NULL,
    CO_UF_NASC INT NOT NULL,
    CO_MUNICIPIO_NASC INT NOT NULL,

    PRIMARY KEY(CO_PAIS_ORIGEM, TP_NACIONALIDADE, CO_UF_NASC, CO_MUNICIPIO_NASC),

    CONSTRAINT FKEY_CO_PAIS_ORIGEM FOREIGN KEY (CO_PAIS_ORIGEM)
        REFERENCES PAIS(CO_PAIS),
    CONSTRAINT FKEY_TP_NACIONALIDADE FOREIGN KEY (TP_NACIONALIDADE)
        REFERENCES NACIONALIDADE(CO_NACIONALIDADE),
    CONSTRAINT FKEY_CO_MUNICIPIO_NASC FOREIGN KEY (CO_MUNICIPIO_NASC)
        REFERENCES MUNICIPIO(CO_MUNICIPIO),
    CONSTRAINT FKEY_CO_UF_NASC FOREIGN KEY (CO_UF_NASC)
        REFERENCES UF(CO_UF)        
);

DROP TABLE IF EXISTS TP_TIPO_DOCENTE CASCADE; -- CRIADA
CREATE TABLE TP_TIPO_DOCENTE(
    ID_TIPO_DOCENTE INT NOT NULL UNIQUE,
    TIPO_DOCENTE VARCHAR(100),

    PRIMARY KEY(ID_TIPO_DOCENTE)
);
INSERT INTO TP_TIPO_DOCENTE VALUES 
(1, 'Docente'),
(2, 'Auxiliar/Assistente Educacional'),
(3, 'Profissional/Monitor de atividade complementar'),
(4, 'Tradutor Intérprete de Libras'),
(5, 'Docente Titular - coordenador de tutoria (de módulo ou disciplina) - EAD'),
(6, 'Docente Tutor - Auxiliar (de módulo ou disciplina) - EAD');


DROP TABLE IF EXISTS TP_TIPO_CONTRATACAO CASCADE; -- CRIADA
CREATE TABLE TP_TIPO_CONTRATACAO(
    ID_TIPO_CONTRATACAO INT NOT NULL UNIQUE,
    TIPO_CONTRATACAO VARCHAR(100),

    PRIMARY KEY(ID_TIPO_CONTRATACAO)
);
INSERT INTO TP_TIPO_CONTRATACAO VALUES
(1, 'Concursado/efetivo/estável'),
(2, 'Contrato temporário'),
(3, 'Contrato terceirizado'),
(4, 'Contrato CLT'),
(0, '- Não aplicável para docentes de escolas privadas');


DROP TABLE IF EXISTS TP_TIPO_IES CASCADE; -- CRIADA
CREATE TABLE TP_TIPO_IES(
    ID_TIPO_IES INT NOT NULL UNIQUE,
    TIPO_IES VARCHAR(100),

    PRIMARY KEY(ID_TIPO_IES)
);
INSERT INTO TP_TIPO_IES VALUES
(1, 'Pública'),
(2, 'Privada');


DROP TABLE IF EXISTS TP_SITUACAO_CURSO CASCADE; -- CRIADA
CREATE TABLE TP_SITUACAO_CURSO(
    ID_SITUACAO_CURSO INT NOT NULL UNIQUE,
    SITUACAO_CURSO VARCHAR(100),

    PRIMARY KEY(ID_SITUACAO_CURSO)
);
INSERT INTO TP_SITUACAO_CURSO VALUES
(1, 'Concluído'),
(2, 'Em andamento');


DROP TABLE IF EXISTS TP_NORMAL_MAGISTERIO CASCADE; -- CRIADA
CREATE TABLE TP_NORMAL_MAGISTERIO(
    ID_NORMAL_MAGISTERIO INT NOT NULL UNIQUE,
    NORMAL_MAGISTERIO VARCHAR(100),

    PRIMARY KEY(ID_NORMAL_MAGISTERIO)
);
INSERT INTO TP_NORMAL_MAGISTERIO VALUES
(0, 'Não'),
(1, 'Sim'),
(2, 'Sim - específico indígena'),
(3, 'Não disponível (docente com superior em andamento ou concluído)');


DROP TABLE IF EXISTS TP_ESCOLARIDADE CASCADE; -- CRIADA
CREATE TABLE TP_ESCOLARIDADE(
    ID_ESCOLARIDADE INT NOT NULL UNIQUE,
    ESCOLARIDADE VARCHAR(100),

    PRIMARY KEY(ID_ESCOLARIDADE)
);
INSERT INTO TP_ESCOLARIDADE VALUES
(1, 'Fundamental incompleto'),
(2, 'Fundamental completo'),
(3, 'Ensino Médio completo'),
(4, 'Superior completo');


DROP TABLE IF EXISTS DEPENDENCIA_ADM CASCADE;  -- CRIADA
CREATE TABLE DEPENDENCIA_ADM(
    CO_DEPENDENCIA_ADM INT NOT NULL UNIQUE,
    DEPENDENCIA_ADM VARCHAR(30),

    PRIMARY KEY(CO_DEPENDENCIA_ADM)
);
INSERT INTO DEPENDENCIA_ADM VALUES
(1, 'FEDERAL'),
(2, 'ESTADUAL'),
(3, 'MUNICIPAL'),
(4, 'PRIVADA');


DROP TABLE IF EXISTS CURSO_SUPERIOR CASCADE; -- CRIADA
CREATE TABLE CURSO_SUPERIOR(
    ID_CURSO_SUPERIOR INT NOT NULL UNIQUE,
    TP_SITUACAO_CURSO INT,
    IN_LICENCIATURA INT,
    IN_COM_PEDAGOGICA INT,
    NU_ANO_INICIO DATE NOT NULL,
    NU_ANO_CONCLUSAO DATE,
    TP_TIPO_IES INT,
    CO_IES INT NOT NULL,
    CO_AREA_CURSO INT NOT NULL,
    CO_CURSO INT NOT NULL,

    PRIMARY KEY(ID_CURSO_SUPERIOR),

    CONSTRAINT FKEY_TP_TIPO_IES FOREIGN KEY (TP_TIPO_IES)
        REFERENCES TP_TIPO_IES(ID_TIPO_IES),
    CONSTRAINT FKEY_TP_SITUACAO_CURSO FOREIGN KEY (TP_SITUACAO_CURSO)
        REFERENCES TP_SITUACAO_CURSO(ID_SITUACAO_CURSO),

    CONSTRAINT FKEY_CO_IES FOREIGN KEY (CO_IES)
        REFERENCES INSTITUICAO_ENSINO(CO_IES),
    CONSTRAINT FKEY_CO_AREA_CURSO FOREIGN KEY (CO_AREA_CURSO)
        REFERENCES AREA_CURSO(CO_AREA_CURSO),
    CONSTRAINT FKEY_CO_CURSO FOREIGN KEY (CO_CURSO)
        REFERENCES CURSO(CO_CURSO)
);

DROP TABLE IF EXISTS INSTITUICAO_ENSINO CASCADE; -- CRIADA
CREATE TABLE INSTITUICAO_ENSINO(
    CO_IES INT NOT NULL UNIQUE,
    IES VARCHAR(200),
    CO_UF INT,
    CO_MUNICIPIO INT,
    CO_DEPENDENCIA_ADM INT,
    CO_TIPO_IES INT ,
    CONDICAO_FUNCIONAMENTO INT,

     PRIMARY KEY(CO_IES),

    CONSTRAINT FKEY_CO_DEPENDENCIA_ADM FOREIGN KEY (CO_DEPENDENCIA_ADM)
        REFERENCES DEPENDENCIA_ADM(CO_DEPENDENCIA_ADM),
    CONSTRAINT FKEY_CO_MUNICIPIO FOREIGN KEY (CO_MUNICIPIO)
        REFERENCES MUNICIPIO(CO_MUNICIPIO),
    CONSTRAINT FKEY_CO_UF FOREIGN KEY (CO_UF)
        REFERENCES UF(CO_UF),
    CONSTRAINT FKEY_ID_TIPO_IES FOREIGN KEY (CO_TIPO_IES)
        REFERENCES TIPO_IES(CO_TIPO_IES)
);

DROP TABLE IF EXISTS DOCENTE CASCADE; -- CRIADA
CREATE TABLE DOCENTE(
    ID_DOCENTE INT NOT NULL UNIQUE, 
    NU_DIA INT NOT NULL,
    NU_MES INT NOT NULL,
    NU_ANO INT NOT NULL,
    NU_IDADE_REFERENCIA INT NOT NULL, 
    NU_IDADE INT NOT NULL, 
    TP_SEXO INT NOT NULL,
    TP_COR_RACA INT,

    CO_UF_END INT NOT NULL,
    CO_MUNICIPIO_END INT NOT NULL,
    TP_ZONA_RESIDENCIAL INT NOT NULL,
    
    co_pais_origem INT NOT NULL,
    tp_nacionalidade INT NOT NULL,
    co_uf_nasc INT NOT NULL,
    co_municipio_nasc INT NOT NULL, 

    LOCAL_NASC INT NOT NULL,
    IN_NECESSIDADE_ESPECIAL BOOLEAN NOT NULL, 
    TP_ESCOLARIDADE INT NOT NULL,
    TP_NORMAL_MAGISTERIO INT,
    TP_TIPO_DOCENTE INT NOT NULL,
    TP_TIPO_CONTRATACAO INT NOT NULL,
    
    PRIMARY KEY(ID_DOCENTE),

    CONSTRAINT FKEY_TP_SEXO FOREIGN KEY (TP_SEXO)
        REFERENCES SEXO(CO_SEXO), 
    CONSTRAINT FKEY_COR_RACA FOREIGN KEY (TP_COR_RACA)
        REFERENCES COR_RACA(CO_COR_RACA),
    CONSTRAINT FKEY_CO_UF_END FOREIGN KEY (CO_UF_END, CO_MUNICIPIO_END, TP_ZONA_RESIDENCIAL)
        REFERENCES ENDERECO(CO_UF_END, CO_MUNICIPIO_END, TP_ZONA_RESIDENCIAL),

    CONSTRAINT FKEY_LOCAL_NASC FOREIGN KEY (co_pais_origem, tp_nacionalidade, co_uf_nasc, co_municipio_nasc)
        REFERENCES LOCAL_NASC(co_pais_origem, tp_nacionalidade, co_uf_nasc, co_municipio_nasc),

    CONSTRAINT FKEY_TP_ESCOLARIDADE FOREIGN KEY (TP_ESCOLARIDADE)
        REFERENCES TP_ESCOLARIDADE(ID_ESCOLARIDADE),
    CONSTRAINT FKEY_TP_NORMAL_MAGISTERIO FOREIGN KEY (TP_NORMAL_MAGISTERIO)
        REFERENCES TP_NORMAL_MAGISTERIO(ID_NORMAL_MAGISTERIO),
    CONSTRAINT FKEY_TP_TIPO_DOCENTE FOREIGN KEY (TP_TIPO_DOCENTE)
        REFERENCES TP_TIPO_DOCENTE(ID_TIPO_DOCENTE),
    CONSTRAINT FKEY_TP_TIPO_CONTRATACAO FOREIGN KEY (TP_TIPO_CONTRATACAO)
        REFERENCES TP_TIPO_CONTRATACAO(ID_TIPO_CONTRATACAO)
);

DROP TABLE IF EXISTS DOCENTE_DEFICIENCIAS CASCADE; -- CRIADA
CREATE TABLE DOCENTE_DEFICIENCIAS(
    ID_DOCENTE INT NOT NULL,
    ID_DEFICIENCIA INT NOT NULL,

    PRIMARY KEY(ID_DOCENTE, ID_DEFICIENCIA),

    CONSTRAINT FKEY_ID_DOCENTE FOREIGN KEY (ID_DOCENTE)
        REFERENCES DOCENTE(ID_DOCENTE),
    CONSTRAINT FKEY_ID_DEFICIENCIA FOREIGN KEY (ID_DEFICIENCIA)
        REFERENCES DEFICIENCIA(ID_DEFICIENCIA)
);

DROP TABLE IF EXISTS DOCENTE_DISCIPLINA CASCADE; -- CRIADA
CREATE TABLE DOCENTE_DISCIPLINA(
    ID_DOCENTE INT NOT NULL,
    ID_DISCIPLINA INT NOT NULL,

    PRIMARY KEY(ID_DOCENTE, ID_DISCIPLINA),

    CONSTRAINT FKEY_ID_DOCENTE FOREIGN KEY (ID_DOCENTE)
        REFERENCES DOCENTE(ID_DOCENTE),
    CONSTRAINT FKEY_ID_DISCIPLINA FOREIGN KEY (ID_DISCIPLINA)
        REFERENCES DISCIPLINA(ID_DISCIPLINA)
);

DROP TABLE IF EXISTS DOCENTE_CURSO_SUPERIOR CASCADE; -- CRIADA
CREATE TABLE DOCENTE_CURSO_SUPERIOR(
    ID_DOCENTE INT NOT NULL,
    ID_CURSO_SUPERIOR INT NOT NULL,

    PRIMARY KEY(ID_DOCENTE, ID_CURSO_SUPERIOR),

    CONSTRAINT FKEY_ID_DOCENTE FOREIGN KEY (ID_DOCENTE)
        REFERENCES DOCENTE(ID_DOCENTE),
    CONSTRAINT FkEY_ID_CURSO_SUPERIOR FOREIGN KEY (ID_CURSO_SUPERIOR)
        REFERENCES CURSO_SUPERIOR(ID_CURSO_SUPERIOR)
);

DROP TABLE IF EXISTS DOCENTE_OUTROS_CURSOS CASCADE; -- CRIADA
CREATE TABLE DOCENTE_OUTROS_CURSOS(
    ID_DOCENTE INT NOT NULL,
    ID_OUTROS_CURSOS INT NOT NULL,

    PRIMARY KEY(ID_DOCENTE, ID_OUTROS_CURSOS),

    CONSTRAINT FKEY_ID_DOCENTE FOREIGN KEY (ID_DOCENTE)
        REFERENCES DOCENTE(ID_DOCENTE),
    CONSTRAINT FKEY_ID_OUTROS_CURSOS FOREIGN KEY (ID_OUTROS_CURSOS)
        REFERENCES OUTROS_CURSOS(ID_OUTROS_CURSOS)
);


--------------------- DOCENTES_ORIGINAL -------------------------------------------

--ALTER TABLE DOCENTES_ORIGINAL ADD CONSTRAINT PK_DOCENTES PRIMARY KEY (ID_DOCENTE);

DROP TABLE IF EXISTS DOCENTES_NORDESTE_ORIGINAL CASCADE; 
CREATE TABLE DOCENTES_NORDESTE_ORIGINAL(
    NU_ANO_CENSO VARCHAR(100),
    ID_DOCENTE VARCHAR(100),
    NU_DIA VARCHAR(100),
    NU_MES VARCHAR(100),
    NU_ANO VARCHAR(100),
    NU_IDADE_REFERENCIA VARCHAR(100),
    NU_IDADE VARCHAR(100),
    TP_SEXO VARCHAR(100),
    TP_COR_RACA VARCHAR(100),
    TP_NACIONALIDADE VARCHAR(100),
    CO_PAIS_ORIGEM VARCHAR(100),
    CO_UF_NASC VARCHAR(100),
    CO_MUNICIPIO_NASC VARCHAR(100),
    CO_UF_END VARCHAR(100),
    CO_MUNICIPIO_END VARCHAR(100),
    TP_ZONA_RESIDENCIAL VARCHAR(100),
    IN_NECESSIDADE_ESPECIAL VARCHAR(100),
    IN_CEGUEIRA VARCHAR(100),
    IN_BAIXA_VISAO VARCHAR(100),
    IN_SURDEZ VARCHAR(100),
    IN_DEF_AUDITIVA VARCHAR(100),
    IN_SURDOCEGUEIRA VARCHAR(100),
    IN_DEF_FISICA VARCHAR(100),
    IN_DEF_INTELECTUAL VARCHAR(100),
    IN_DEF_MULTIPLA VARCHAR(100),
    TP_ESCOLARIDADE VARCHAR(100),
    TP_NORMAL_MAGISTERIO VARCHAR(100),
    TP_SITUACAO_CURSO_1 VARCHAR(100),
    CO_AREA_CURSO_1 VARCHAR(100),
    CO_CURSO_1 VARCHAR(100),
    IN_LICENCIATURA_1 VARCHAR(100),
    IN_COM_PEDAGOGICA_1 VARCHAR(100),
    NU_ANO_INICIO_1 VARCHAR(100),
    NU_ANO_CONCLUSAO_1 VARCHAR(100),
    TP_TIPO_IES_1 VARCHAR(100),
    CO_IES_1 VARCHAR(100),
    TP_SITUACAO_CURSO_2 VARCHAR(100),
    CO_AREA_CURSO_2 VARCHAR(100),
    CO_CURSO_2 VARCHAR(100),
    IN_LICENCIATURA_2 VARCHAR(100),
    IN_COM_PEDAGOGICA_2 VARCHAR(100),
    NU_ANO_INICIO_2 VARCHAR(100),
    NU_ANO_CONCLUSAO_2 VARCHAR(100),
    TP_TIPO_IES_2 VARCHAR(100),
    CO_IES_2 VARCHAR(100),
    TP_SITUACAO_CURSO_3 VARCHAR(100),
    CO_AREA_CURSO_3 VARCHAR(100),
    CO_CURSO_3 VARCHAR(100),
    IN_LICENCIATURA_3 VARCHAR(100),
    IN_COM_PEDAGOGICA_3 VARCHAR(100),
    NU_ANO_INICIO_3 VARCHAR(100),
    NU_ANO_CONCLUSAO_3 VARCHAR(100),
    TP_TIPO_IES_3 VARCHAR(100),
    CO_IES_3 VARCHAR(100),
    IN_DISC_QUIMICA VARCHAR(100),
    IN_DISC_FISICA VARCHAR(100),
    IN_DISC_MATEMATICA VARCHAR(100),
    IN_DISC_BIOLOGIA VARCHAR(100),
    IN_DISC_CIENCIAS VARCHAR(100),
    IN_DISC_LINGUA_PORTUGUESA VARCHAR(100),
    IN_DISC_LINGUA_INGLES VARCHAR(100),
    IN_DISC_LINGUA_ESPANHOL VARCHAR(100),
    IN_DISC_LINGUA_FRANCES VARCHAR(100),
    IN_DISC_LINGUA_OUTRA VARCHAR(100),
    IN_DISC_LINGUA_INDIGENA VARCHAR(100),
    IN_DISC_ARTES VARCHAR(100),
    IN_DISC_EDUCACAO_FISICA VARCHAR(100),
    IN_DISC_HISTORIA VARCHAR(100),
    IN_DISC_GEOGRAFIA VARCHAR(100),
    IN_DISC_FILOSOFIA VARCHAR(100),
    IN_DISC_ENSINO_RELIGIOSO VARCHAR(100),
    IN_DISC_ESTUDOS_SOCIAIS VARCHAR(100),
    IN_DISC_SOCIOLOGIA VARCHAR(100),
    IN_DISC_EST_SOCIAIS_SOCIOLOGIA VARCHAR(100),
    IN_DISC_INFORMATICA_COMPUTACAO VARCHAR(100),
    IN_DISC_PROFISSIONALIZANTE VARCHAR(100),
    IN_DISC_ATENDIMENTO_ESPECIAIS VARCHAR(100),
    IN_DISC_DIVER_SOCIO_CULTURAL VARCHAR(100),
    IN_DISC_LIBRAS VARCHAR(100),
    IN_DISC_PEDAGOGICAS VARCHAR(100),
    IN_DISC_OUTRAS VARCHAR(100),
    IN_ESPECIALIZACAO VARCHAR(100),
    IN_MESTRADO VARCHAR(100),
    IN_DOUTORADO VARCHAR(100),
    IN_POS_NENHUM VARCHAR(100),
    IN_ESPECIFICO_CRECHE VARCHAR(100),
    IN_ESPECIFICO_PRE_ESCOLA VARCHAR(100),
    IN_ESPECIFICO_ANOS_INICIAIS VARCHAR(100),
    IN_ESPECIFICO_ANOS_FINAIS VARCHAR(100),
    IN_ESPECIFICO_ENS_MEDIO VARCHAR(100),
    IN_ESPECIFICO_EJA VARCHAR(100),
    IN_ESPECIFICO_ED_ESPECIAL VARCHAR(100),
    IN_ESPECIFICO_ED_INDIGENA VARCHAR(100),
    IN_ESPECIFICO_CAMPO VARCHAR(100),
    IN_ESPECIFICO_AMBIENTAL VARCHAR(100),
    IN_ESPECIFICO_DIR_HUMANOS VARCHAR(100),
    IN_ESPECIFICO_DIV_SEXUAL VARCHAR(100),
    IN_ESPECIFICO_DIR_ADOLESC VARCHAR(100),
    IN_ESPECIFICO_AFRO VARCHAR(100),
    IN_ESPECIFICO_OUTROS VARCHAR(100),
    IN_ESPECIFICO_NENHUM VARCHAR(100),
    TP_TIPO_DOCENTE VARCHAR(100),
    TP_TIPO_CONTRATACAO VARCHAR(100),
    ID_TURMA VARCHAR(100),
    TP_TIPO_TURMA VARCHAR(100),
    TP_MEDIACAO_DIDATICO_PEDAGO VARCHAR(100),
    IN_ESPECIAL_EXCLUSIVA VARCHAR(100),
    IN_REGULAR VARCHAR(100),
    IN_EJA VARCHAR(100),
    IN_PROFISSIONALIZANTE VARCHAR(100),
    TP_ETAPA_ENSINO VARCHAR(100),
    CO_CURSO_EDUC_PROFISSIONAL VARCHAR(100),
    CO_REGIAO VARCHAR(100),
    CO_MESORREGIAO VARCHAR(100),
    CO_MICRORREGIAO VARCHAR(100),
    CO_ENTIDADE VARCHAR(100),
    CO_UF VARCHAR(100),
    CO_MUNICIPIO VARCHAR(100),
    CO_DISTRITO VARCHAR(100),
    TP_DEPENDENCIA VARCHAR(100),
    TP_LOCALIZACAO VARCHAR(100),
    TP_CATEGORIA_ESCOLA_PRIVADA VARCHAR(100),
    IN_CONVENIADA_PP VARCHAR(100),
    TP_CONVENIO_PODER_PUBLICO VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_EMP VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_ONG VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIND VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIST_S VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_S_FINS VARCHAR(100),
    TP_REGULAMENTACAO VARCHAR(100),
    TP_LOCALIZACAO_DIFERENCIADA VARCHAR(100),
    IN_EDUCACAO_INDIGENA VARCHAR(100)
);
COPY DOCENTES_NORDESTE_ORIGINAL
FROM '/home/jennifer/Documents/UTFPR/2019-1/Lab BD/microdados_educacao_basica_2018/microdados_ed_basica_2018/DADOS/DOCENTES_NORDESTE.CSV' DELIMITER '|' CSV HEADER;

DROP TABLE IF EXISTS DOCENTES_NORTE_ORIGINAL CASCADE; 
CREATE TABLE DOCENTES_NORTE_ORIGINAL(
    NU_ANO_CENSO VARCHAR(100),
    ID_DOCENTE VARCHAR(100),
    NU_DIA VARCHAR(100),
    NU_MES VARCHAR(100),
    NU_ANO VARCHAR(100),
    NU_IDADE_REFERENCIA VARCHAR(100),
    NU_IDADE VARCHAR(100),
    TP_SEXO VARCHAR(100),
    TP_COR_RACA VARCHAR(100),
    TP_NACIONALIDADE VARCHAR(100),
    CO_PAIS_ORIGEM VARCHAR(100),
    CO_UF_NASC VARCHAR(100),
    CO_MUNICIPIO_NASC VARCHAR(100),
    CO_UF_END VARCHAR(100),
    CO_MUNICIPIO_END VARCHAR(100),
    TP_ZONA_RESIDENCIAL VARCHAR(100),
    IN_NECESSIDADE_ESPECIAL VARCHAR(100),
    IN_CEGUEIRA VARCHAR(100),
    IN_BAIXA_VISAO VARCHAR(100),
    IN_SURDEZ VARCHAR(100),
    IN_DEF_AUDITIVA VARCHAR(100),
    IN_SURDOCEGUEIRA VARCHAR(100),
    IN_DEF_FISICA VARCHAR(100),
    IN_DEF_INTELECTUAL VARCHAR(100),
    IN_DEF_MULTIPLA VARCHAR(100),
    TP_ESCOLARIDADE VARCHAR(100),
    TP_NORMAL_MAGISTERIO VARCHAR(100),
    TP_SITUACAO_CURSO_1 VARCHAR(100),
    CO_AREA_CURSO_1 VARCHAR(100),
    CO_CURSO_1 VARCHAR(100),
    IN_LICENCIATURA_1 VARCHAR(100),
    IN_COM_PEDAGOGICA_1 VARCHAR(100),
    NU_ANO_INICIO_1 VARCHAR(100),
    NU_ANO_CONCLUSAO_1 VARCHAR(100),
    TP_TIPO_IES_1 VARCHAR(100),
    CO_IES_1 VARCHAR(100),
    TP_SITUACAO_CURSO_2 VARCHAR(100),
    CO_AREA_CURSO_2 VARCHAR(100),
    CO_CURSO_2 VARCHAR(100),
    IN_LICENCIATURA_2 VARCHAR(100),
    IN_COM_PEDAGOGICA_2 VARCHAR(100),
    NU_ANO_INICIO_2 VARCHAR(100),
    NU_ANO_CONCLUSAO_2 VARCHAR(100),
    TP_TIPO_IES_2 VARCHAR(100),
    CO_IES_2 VARCHAR(100),
    TP_SITUACAO_CURSO_3 VARCHAR(100),
    CO_AREA_CURSO_3 VARCHAR(100),
    CO_CURSO_3 VARCHAR(100),
    IN_LICENCIATURA_3 VARCHAR(100),
    IN_COM_PEDAGOGICA_3 VARCHAR(100),
    NU_ANO_INICIO_3 VARCHAR(100),
    NU_ANO_CONCLUSAO_3 VARCHAR(100),
    TP_TIPO_IES_3 VARCHAR(100),
    CO_IES_3 VARCHAR(100),
    IN_DISC_QUIMICA VARCHAR(100),
    IN_DISC_FISICA VARCHAR(100),
    IN_DISC_MATEMATICA VARCHAR(100),
    IN_DISC_BIOLOGIA VARCHAR(100),
    IN_DISC_CIENCIAS VARCHAR(100),
    IN_DISC_LINGUA_PORTUGUESA VARCHAR(100),
    IN_DISC_LINGUA_INGLES VARCHAR(100),
    IN_DISC_LINGUA_ESPANHOL VARCHAR(100),
    IN_DISC_LINGUA_FRANCES VARCHAR(100),
    IN_DISC_LINGUA_OUTRA VARCHAR(100),
    IN_DISC_LINGUA_INDIGENA VARCHAR(100),
    IN_DISC_ARTES VARCHAR(100),
    IN_DISC_EDUCACAO_FISICA VARCHAR(100),
    IN_DISC_HISTORIA VARCHAR(100),
    IN_DISC_GEOGRAFIA VARCHAR(100),
    IN_DISC_FILOSOFIA VARCHAR(100),
    IN_DISC_ENSINO_RELIGIOSO VARCHAR(100),
    IN_DISC_ESTUDOS_SOCIAIS VARCHAR(100),
    IN_DISC_SOCIOLOGIA VARCHAR(100),
    IN_DISC_EST_SOCIAIS_SOCIOLOGIA VARCHAR(100),
    IN_DISC_INFORMATICA_COMPUTACAO VARCHAR(100),
    IN_DISC_PROFISSIONALIZANTE VARCHAR(100),
    IN_DISC_ATENDIMENTO_ESPECIAIS VARCHAR(100),
    IN_DISC_DIVER_SOCIO_CULTURAL VARCHAR(100),
    IN_DISC_LIBRAS VARCHAR(100),
    IN_DISC_PEDAGOGICAS VARCHAR(100),
    IN_DISC_OUTRAS VARCHAR(100),
    IN_ESPECIALIZACAO VARCHAR(100),
    IN_MESTRADO VARCHAR(100),
    IN_DOUTORADO VARCHAR(100),
    IN_POS_NENHUM VARCHAR(100),
    IN_ESPECIFICO_CRECHE VARCHAR(100),
    IN_ESPECIFICO_PRE_ESCOLA VARCHAR(100),
    IN_ESPECIFICO_ANOS_INICIAIS VARCHAR(100),
    IN_ESPECIFICO_ANOS_FINAIS VARCHAR(100),
    IN_ESPECIFICO_ENS_MEDIO VARCHAR(100),
    IN_ESPECIFICO_EJA VARCHAR(100),
    IN_ESPECIFICO_ED_ESPECIAL VARCHAR(100),
    IN_ESPECIFICO_ED_INDIGENA VARCHAR(100),
    IN_ESPECIFICO_CAMPO VARCHAR(100),
    IN_ESPECIFICO_AMBIENTAL VARCHAR(100),
    IN_ESPECIFICO_DIR_HUMANOS VARCHAR(100),
    IN_ESPECIFICO_DIV_SEXUAL VARCHAR(100),
    IN_ESPECIFICO_DIR_ADOLESC VARCHAR(100),
    IN_ESPECIFICO_AFRO VARCHAR(100),
    IN_ESPECIFICO_OUTROS VARCHAR(100),
    IN_ESPECIFICO_NENHUM VARCHAR(100),
    TP_TIPO_DOCENTE VARCHAR(100),
    TP_TIPO_CONTRATACAO VARCHAR(100),
    ID_TURMA VARCHAR(100),
    TP_TIPO_TURMA VARCHAR(100),
    TP_MEDIACAO_DIDATICO_PEDAGO VARCHAR(100),
    IN_ESPECIAL_EXCLUSIVA VARCHAR(100),
    IN_REGULAR VARCHAR(100),
    IN_EJA VARCHAR(100),
    IN_PROFISSIONALIZANTE VARCHAR(100),
    TP_ETAPA_ENSINO VARCHAR(100),
    CO_CURSO_EDUC_PROFISSIONAL VARCHAR(100),
    CO_REGIAO VARCHAR(100),
    CO_MESORREGIAO VARCHAR(100),
    CO_MICRORREGIAO VARCHAR(100),
    CO_ENTIDADE VARCHAR(100),
    CO_UF VARCHAR(100),
    CO_MUNICIPIO VARCHAR(100),
    CO_DISTRITO VARCHAR(100),
    TP_DEPENDENCIA VARCHAR(100),
    TP_LOCALIZACAO VARCHAR(100),
    TP_CATEGORIA_ESCOLA_PRIVADA VARCHAR(100),
    IN_CONVENIADA_PP VARCHAR(100),
    TP_CONVENIO_PODER_PUBLICO VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_EMP VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_ONG VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIND VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIST_S VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_S_FINS VARCHAR(100),
    TP_REGULAMENTACAO VARCHAR(100),
    TP_LOCALIZACAO_DIFERENCIADA VARCHAR(100),
    IN_EDUCACAO_INDIGENA VARCHAR(100)
);
COPY DOCENTES_NORTE_ORIGINAL
FROM '/home/jennifer/Documents/UTFPR/2019-1/Lab BD/microdados_educacao_basica_2018/microdados_ed_basica_2018/DADOS/DOCENTES_NORTE.CSV' DELIMITER '|' CSV HEADER;

DROP TABLE IF EXISTS DOCENTES_SUDESTE_ORIGINAL CASCADE; 
CREATE TABLE DOCENTES_SUDESTE_ORIGINAL(
    NU_ANO_CENSO VARCHAR(100),
    ID_DOCENTE VARCHAR(100),
    NU_DIA VARCHAR(100),
    NU_MES VARCHAR(100),
    NU_ANO VARCHAR(100),
    NU_IDADE_REFERENCIA VARCHAR(100),
    NU_IDADE VARCHAR(100),
    TP_SEXO VARCHAR(100),
    TP_COR_RACA VARCHAR(100),
    TP_NACIONALIDADE VARCHAR(100),
    CO_PAIS_ORIGEM VARCHAR(100),
    CO_UF_NASC VARCHAR(100),
    CO_MUNICIPIO_NASC VARCHAR(100),
    CO_UF_END VARCHAR(100),
    CO_MUNICIPIO_END VARCHAR(100),
    TP_ZONA_RESIDENCIAL VARCHAR(100),
    IN_NECESSIDADE_ESPECIAL VARCHAR(100),
    IN_CEGUEIRA VARCHAR(100),
    IN_BAIXA_VISAO VARCHAR(100),
    IN_SURDEZ VARCHAR(100),
    IN_DEF_AUDITIVA VARCHAR(100),
    IN_SURDOCEGUEIRA VARCHAR(100),
    IN_DEF_FISICA VARCHAR(100),
    IN_DEF_INTELECTUAL VARCHAR(100),
    IN_DEF_MULTIPLA VARCHAR(100),
    TP_ESCOLARIDADE VARCHAR(100),
    TP_NORMAL_MAGISTERIO VARCHAR(100),
    TP_SITUACAO_CURSO_1 VARCHAR(100),
    CO_AREA_CURSO_1 VARCHAR(100),
    CO_CURSO_1 VARCHAR(100),
    IN_LICENCIATURA_1 VARCHAR(100),
    IN_COM_PEDAGOGICA_1 VARCHAR(100),
    NU_ANO_INICIO_1 VARCHAR(100),
    NU_ANO_CONCLUSAO_1 VARCHAR(100),
    TP_TIPO_IES_1 VARCHAR(100),
    CO_IES_1 VARCHAR(100),
    TP_SITUACAO_CURSO_2 VARCHAR(100),
    CO_AREA_CURSO_2 VARCHAR(100),
    CO_CURSO_2 VARCHAR(100),
    IN_LICENCIATURA_2 VARCHAR(100),
    IN_COM_PEDAGOGICA_2 VARCHAR(100),
    NU_ANO_INICIO_2 VARCHAR(100),
    NU_ANO_CONCLUSAO_2 VARCHAR(100),
    TP_TIPO_IES_2 VARCHAR(100),
    CO_IES_2 VARCHAR(100),
    TP_SITUACAO_CURSO_3 VARCHAR(100),
    CO_AREA_CURSO_3 VARCHAR(100),
    CO_CURSO_3 VARCHAR(100),
    IN_LICENCIATURA_3 VARCHAR(100),
    IN_COM_PEDAGOGICA_3 VARCHAR(100),
    NU_ANO_INICIO_3 VARCHAR(100),
    NU_ANO_CONCLUSAO_3 VARCHAR(100),
    TP_TIPO_IES_3 VARCHAR(100),
    CO_IES_3 VARCHAR(100),
    IN_DISC_QUIMICA VARCHAR(100),
    IN_DISC_FISICA VARCHAR(100),
    IN_DISC_MATEMATICA VARCHAR(100),
    IN_DISC_BIOLOGIA VARCHAR(100),
    IN_DISC_CIENCIAS VARCHAR(100),
    IN_DISC_LINGUA_PORTUGUESA VARCHAR(100),
    IN_DISC_LINGUA_INGLES VARCHAR(100),
    IN_DISC_LINGUA_ESPANHOL VARCHAR(100),
    IN_DISC_LINGUA_FRANCES VARCHAR(100),
    IN_DISC_LINGUA_OUTRA VARCHAR(100),
    IN_DISC_LINGUA_INDIGENA VARCHAR(100),
    IN_DISC_ARTES VARCHAR(100),
    IN_DISC_EDUCACAO_FISICA VARCHAR(100),
    IN_DISC_HISTORIA VARCHAR(100),
    IN_DISC_GEOGRAFIA VARCHAR(100),
    IN_DISC_FILOSOFIA VARCHAR(100),
    IN_DISC_ENSINO_RELIGIOSO VARCHAR(100),
    IN_DISC_ESTUDOS_SOCIAIS VARCHAR(100),
    IN_DISC_SOCIOLOGIA VARCHAR(100),
    IN_DISC_EST_SOCIAIS_SOCIOLOGIA VARCHAR(100),
    IN_DISC_INFORMATICA_COMPUTACAO VARCHAR(100),
    IN_DISC_PROFISSIONALIZANTE VARCHAR(100),
    IN_DISC_ATENDIMENTO_ESPECIAIS VARCHAR(100),
    IN_DISC_DIVER_SOCIO_CULTURAL VARCHAR(100),
    IN_DISC_LIBRAS VARCHAR(100),
    IN_DISC_PEDAGOGICAS VARCHAR(100),
    IN_DISC_OUTRAS VARCHAR(100),
    IN_ESPECIALIZACAO VARCHAR(100),
    IN_MESTRADO VARCHAR(100),
    IN_DOUTORADO VARCHAR(100),
    IN_POS_NENHUM VARCHAR(100),
    IN_ESPECIFICO_CRECHE VARCHAR(100),
    IN_ESPECIFICO_PRE_ESCOLA VARCHAR(100),
    IN_ESPECIFICO_ANOS_INICIAIS VARCHAR(100),
    IN_ESPECIFICO_ANOS_FINAIS VARCHAR(100),
    IN_ESPECIFICO_ENS_MEDIO VARCHAR(100),
    IN_ESPECIFICO_EJA VARCHAR(100),
    IN_ESPECIFICO_ED_ESPECIAL VARCHAR(100),
    IN_ESPECIFICO_ED_INDIGENA VARCHAR(100),
    IN_ESPECIFICO_CAMPO VARCHAR(100),
    IN_ESPECIFICO_AMBIENTAL VARCHAR(100),
    IN_ESPECIFICO_DIR_HUMANOS VARCHAR(100),
    IN_ESPECIFICO_DIV_SEXUAL VARCHAR(100),
    IN_ESPECIFICO_DIR_ADOLESC VARCHAR(100),
    IN_ESPECIFICO_AFRO VARCHAR(100),
    IN_ESPECIFICO_OUTROS VARCHAR(100),
    IN_ESPECIFICO_NENHUM VARCHAR(100),
    TP_TIPO_DOCENTE VARCHAR(100),
    TP_TIPO_CONTRATACAO VARCHAR(100),
    ID_TURMA VARCHAR(100),
    TP_TIPO_TURMA VARCHAR(100),
    TP_MEDIACAO_DIDATICO_PEDAGO VARCHAR(100),
    IN_ESPECIAL_EXCLUSIVA VARCHAR(100),
    IN_REGULAR VARCHAR(100),
    IN_EJA VARCHAR(100),
    IN_PROFISSIONALIZANTE VARCHAR(100),
    TP_ETAPA_ENSINO VARCHAR(100),
    CO_CURSO_EDUC_PROFISSIONAL VARCHAR(100),
    CO_REGIAO VARCHAR(100),
    CO_MESORREGIAO VARCHAR(100),
    CO_MICRORREGIAO VARCHAR(100),
    CO_ENTIDADE VARCHAR(100),
    CO_UF VARCHAR(100),
    CO_MUNICIPIO VARCHAR(100),
    CO_DISTRITO VARCHAR(100),
    TP_DEPENDENCIA VARCHAR(100),
    TP_LOCALIZACAO VARCHAR(100),
    TP_CATEGORIA_ESCOLA_PRIVADA VARCHAR(100),
    IN_CONVENIADA_PP VARCHAR(100),
    TP_CONVENIO_PODER_PUBLICO VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_EMP VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_ONG VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIND VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIST_S VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_S_FINS VARCHAR(100),
    TP_REGULAMENTACAO VARCHAR(100),
    TP_LOCALIZACAO_DIFERENCIADA VARCHAR(100),
    IN_EDUCACAO_INDIGENA VARCHAR(100)
);
COPY DOCENTES_SUDESTE_ORIGINAL
FROM '/home/jennifer/Documents/UTFPR/2019-1/Lab BD/microdados_educacao_basica_2018/microdados_ed_basica_2018/DADOS/DOCENTES_SUDESTE.CSV' DELIMITER '|' CSV HEADER;

DROP TABLE IF EXISTS DOCENTES_SUL_ORIGINAL CASCADE; 
CREATE TABLE DOCENTES_SUL_ORIGINAL(
    NU_ANO_CENSO VARCHAR(100),
    ID_DOCENTE VARCHAR(100),
    NU_DIA VARCHAR(100),
    NU_MES VARCHAR(100),
    NU_ANO VARCHAR(100),
    NU_IDADE_REFERENCIA VARCHAR(100),
    NU_IDADE VARCHAR(100),
    TP_SEXO VARCHAR(100),
    TP_COR_RACA VARCHAR(100),
    TP_NACIONALIDADE VARCHAR(100),
    CO_PAIS_ORIGEM VARCHAR(100),
    CO_UF_NASC VARCHAR(100),
    CO_MUNICIPIO_NASC VARCHAR(100),
    CO_UF_END VARCHAR(100),
    CO_MUNICIPIO_END VARCHAR(100),
    TP_ZONA_RESIDENCIAL VARCHAR(100),
    IN_NECESSIDADE_ESPECIAL VARCHAR(100),
    IN_CEGUEIRA VARCHAR(100),
    IN_BAIXA_VISAO VARCHAR(100),
    IN_SURDEZ VARCHAR(100),
    IN_DEF_AUDITIVA VARCHAR(100),
    IN_SURDOCEGUEIRA VARCHAR(100),
    IN_DEF_FISICA VARCHAR(100),
    IN_DEF_INTELECTUAL VARCHAR(100),
    IN_DEF_MULTIPLA VARCHAR(100),
    TP_ESCOLARIDADE VARCHAR(100),
    TP_NORMAL_MAGISTERIO VARCHAR(100),
    TP_SITUACAO_CURSO_1 VARCHAR(100),
    CO_AREA_CURSO_1 VARCHAR(100),
    CO_CURSO_1 VARCHAR(100),
    IN_LICENCIATURA_1 VARCHAR(100),
    IN_COM_PEDAGOGICA_1 VARCHAR(100),
    NU_ANO_INICIO_1 VARCHAR(100),
    NU_ANO_CONCLUSAO_1 VARCHAR(100),
    TP_TIPO_IES_1 VARCHAR(100),
    CO_IES_1 VARCHAR(100),
    TP_SITUACAO_CURSO_2 VARCHAR(100),
    CO_AREA_CURSO_2 VARCHAR(100),
    CO_CURSO_2 VARCHAR(100),
    IN_LICENCIATURA_2 VARCHAR(100),
    IN_COM_PEDAGOGICA_2 VARCHAR(100),
    NU_ANO_INICIO_2 VARCHAR(100),
    NU_ANO_CONCLUSAO_2 VARCHAR(100),
    TP_TIPO_IES_2 VARCHAR(100),
    CO_IES_2 VARCHAR(100),
    TP_SITUACAO_CURSO_3 VARCHAR(100),
    CO_AREA_CURSO_3 VARCHAR(100),
    CO_CURSO_3 VARCHAR(100),
    IN_LICENCIATURA_3 VARCHAR(100),
    IN_COM_PEDAGOGICA_3 VARCHAR(100),
    NU_ANO_INICIO_3 VARCHAR(100),
    NU_ANO_CONCLUSAO_3 VARCHAR(100),
    TP_TIPO_IES_3 VARCHAR(100),
    CO_IES_3 VARCHAR(100),
    IN_DISC_QUIMICA VARCHAR(100),
    IN_DISC_FISICA VARCHAR(100),
    IN_DISC_MATEMATICA VARCHAR(100),
    IN_DISC_BIOLOGIA VARCHAR(100),
    IN_DISC_CIENCIAS VARCHAR(100),
    IN_DISC_LINGUA_PORTUGUESA VARCHAR(100),
    IN_DISC_LINGUA_INGLES VARCHAR(100),
    IN_DISC_LINGUA_ESPANHOL VARCHAR(100),
    IN_DISC_LINGUA_FRANCES VARCHAR(100),
    IN_DISC_LINGUA_OUTRA VARCHAR(100),
    IN_DISC_LINGUA_INDIGENA VARCHAR(100),
    IN_DISC_ARTES VARCHAR(100),
    IN_DISC_EDUCACAO_FISICA VARCHAR(100),
    IN_DISC_HISTORIA VARCHAR(100),
    IN_DISC_GEOGRAFIA VARCHAR(100),
    IN_DISC_FILOSOFIA VARCHAR(100),
    IN_DISC_ENSINO_RELIGIOSO VARCHAR(100),
    IN_DISC_ESTUDOS_SOCIAIS VARCHAR(100),
    IN_DISC_SOCIOLOGIA VARCHAR(100),
    IN_DISC_EST_SOCIAIS_SOCIOLOGIA VARCHAR(100),
    IN_DISC_INFORMATICA_COMPUTACAO VARCHAR(100),
    IN_DISC_PROFISSIONALIZANTE VARCHAR(100),
    IN_DISC_ATENDIMENTO_ESPECIAIS VARCHAR(100),
    IN_DISC_DIVER_SOCIO_CULTURAL VARCHAR(100),
    IN_DISC_LIBRAS VARCHAR(100),
    IN_DISC_PEDAGOGICAS VARCHAR(100),
    IN_DISC_OUTRAS VARCHAR(100),
    IN_ESPECIALIZACAO VARCHAR(100),
    IN_MESTRADO VARCHAR(100),
    IN_DOUTORADO VARCHAR(100),
    IN_POS_NENHUM VARCHAR(100),
    IN_ESPECIFICO_CRECHE VARCHAR(100),
    IN_ESPECIFICO_PRE_ESCOLA VARCHAR(100),
    IN_ESPECIFICO_ANOS_INICIAIS VARCHAR(100),
    IN_ESPECIFICO_ANOS_FINAIS VARCHAR(100),
    IN_ESPECIFICO_ENS_MEDIO VARCHAR(100),
    IN_ESPECIFICO_EJA VARCHAR(100),
    IN_ESPECIFICO_ED_ESPECIAL VARCHAR(100),
    IN_ESPECIFICO_ED_INDIGENA VARCHAR(100),
    IN_ESPECIFICO_CAMPO VARCHAR(100),
    IN_ESPECIFICO_AMBIENTAL VARCHAR(100),
    IN_ESPECIFICO_DIR_HUMANOS VARCHAR(100),
    IN_ESPECIFICO_DIV_SEXUAL VARCHAR(100),
    IN_ESPECIFICO_DIR_ADOLESC VARCHAR(100),
    IN_ESPECIFICO_AFRO VARCHAR(100),
    IN_ESPECIFICO_OUTROS VARCHAR(100),
    IN_ESPECIFICO_NENHUM VARCHAR(100),
    TP_TIPO_DOCENTE VARCHAR(100),
    TP_TIPO_CONTRATACAO VARCHAR(100),
    ID_TURMA VARCHAR(100),
    TP_TIPO_TURMA VARCHAR(100),
    TP_MEDIACAO_DIDATICO_PEDAGO VARCHAR(100),
    IN_ESPECIAL_EXCLUSIVA VARCHAR(100),
    IN_REGULAR VARCHAR(100),
    IN_EJA VARCHAR(100),
    IN_PROFISSIONALIZANTE VARCHAR(100),
    TP_ETAPA_ENSINO VARCHAR(100),
    CO_CURSO_EDUC_PROFISSIONAL VARCHAR(100),
    CO_REGIAO VARCHAR(100),
    CO_MESORREGIAO VARCHAR(100),
    CO_MICRORREGIAO VARCHAR(100),
    CO_ENTIDADE VARCHAR(100),
    CO_UF VARCHAR(100),
    CO_MUNICIPIO VARCHAR(100),
    CO_DISTRITO VARCHAR(100),
    TP_DEPENDENCIA VARCHAR(100),
    TP_LOCALIZACAO VARCHAR(100),
    TP_CATEGORIA_ESCOLA_PRIVADA VARCHAR(100),
    IN_CONVENIADA_PP VARCHAR(100),
    TP_CONVENIO_PODER_PUBLICO VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_EMP VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_ONG VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIND VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIST_S VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_S_FINS VARCHAR(100),
    TP_REGULAMENTACAO VARCHAR(100),
    TP_LOCALIZACAO_DIFERENCIADA VARCHAR(100),
    IN_EDUCACAO_INDIGENA VARCHAR(100)
);
COPY DOCENTES_SUL_ORIGINAL
FROM '/home/jennifer/Documents/UTFPR/2019-1/Lab BD/microdados_educacao_basica_2018/microdados_ed_basica_2018/DADOS/DOCENTES_SUL.CSV' DELIMITER '|' CSV HEADER;

DROP TABLE IF EXISTS DOCENTES_CENTROOESTE_ORIGINAL CASCADE; 
CREATE TABLE DOCENTES_CENTROOESTE_ORIGINAL(
    NU_ANO_CENSO VARCHAR(100),
    ID_DOCENTE VARCHAR(100),
    NU_DIA VARCHAR(100),
    NU_MES VARCHAR(100),
    NU_ANO VARCHAR(100),
    NU_IDADE_REFERENCIA VARCHAR(100),
    NU_IDADE VARCHAR(100),
    TP_SEXO VARCHAR(100),
    TP_COR_RACA VARCHAR(100),
    TP_NACIONALIDADE VARCHAR(100),
    CO_PAIS_ORIGEM VARCHAR(100),
    CO_UF_NASC VARCHAR(100),
    CO_MUNICIPIO_NASC VARCHAR(100),
    CO_UF_END VARCHAR(100),
    CO_MUNICIPIO_END VARCHAR(100),
    TP_ZONA_RESIDENCIAL VARCHAR(100),
    IN_NECESSIDADE_ESPECIAL VARCHAR(100),
    IN_CEGUEIRA VARCHAR(100),
    IN_BAIXA_VISAO VARCHAR(100),
    IN_SURDEZ VARCHAR(100),
    IN_DEF_AUDITIVA VARCHAR(100),
    IN_SURDOCEGUEIRA VARCHAR(100),
    IN_DEF_FISICA VARCHAR(100),
    IN_DEF_INTELECTUAL VARCHAR(100),
    IN_DEF_MULTIPLA VARCHAR(100),
    TP_ESCOLARIDADE VARCHAR(100),
    TP_NORMAL_MAGISTERIO VARCHAR(100),
    TP_SITUACAO_CURSO_1 VARCHAR(100),
    CO_AREA_CURSO_1 VARCHAR(100),
    CO_CURSO_1 VARCHAR(100),
    IN_LICENCIATURA_1 VARCHAR(100),
    IN_COM_PEDAGOGICA_1 VARCHAR(100),
    NU_ANO_INICIO_1 VARCHAR(100),
    NU_ANO_CONCLUSAO_1 VARCHAR(100),
    TP_TIPO_IES_1 VARCHAR(100),
    CO_IES_1 VARCHAR(100),
    TP_SITUACAO_CURSO_2 VARCHAR(100),
    CO_AREA_CURSO_2 VARCHAR(100),
    CO_CURSO_2 VARCHAR(100),
    IN_LICENCIATURA_2 VARCHAR(100),
    IN_COM_PEDAGOGICA_2 VARCHAR(100),
    NU_ANO_INICIO_2 VARCHAR(100),
    NU_ANO_CONCLUSAO_2 VARCHAR(100),
    TP_TIPO_IES_2 VARCHAR(100),
    CO_IES_2 VARCHAR(100),
    TP_SITUACAO_CURSO_3 VARCHAR(100),
    CO_AREA_CURSO_3 VARCHAR(100),
    CO_CURSO_3 VARCHAR(100),
    IN_LICENCIATURA_3 VARCHAR(100),
    IN_COM_PEDAGOGICA_3 VARCHAR(100),
    NU_ANO_INICIO_3 VARCHAR(100),
    NU_ANO_CONCLUSAO_3 VARCHAR(100),
    TP_TIPO_IES_3 VARCHAR(100),
    CO_IES_3 VARCHAR(100),
    IN_DISC_QUIMICA VARCHAR(100),
    IN_DISC_FISICA VARCHAR(100),
    IN_DISC_MATEMATICA VARCHAR(100),
    IN_DISC_BIOLOGIA VARCHAR(100),
    IN_DISC_CIENCIAS VARCHAR(100),
    IN_DISC_LINGUA_PORTUGUESA VARCHAR(100),
    IN_DISC_LINGUA_INGLES VARCHAR(100),
    IN_DISC_LINGUA_ESPANHOL VARCHAR(100),
    IN_DISC_LINGUA_FRANCES VARCHAR(100),
    IN_DISC_LINGUA_OUTRA VARCHAR(100),
    IN_DISC_LINGUA_INDIGENA VARCHAR(100),
    IN_DISC_ARTES VARCHAR(100),
    IN_DISC_EDUCACAO_FISICA VARCHAR(100),
    IN_DISC_HISTORIA VARCHAR(100),
    IN_DISC_GEOGRAFIA VARCHAR(100),
    IN_DISC_FILOSOFIA VARCHAR(100),
    IN_DISC_ENSINO_RELIGIOSO VARCHAR(100),
    IN_DISC_ESTUDOS_SOCIAIS VARCHAR(100),
    IN_DISC_SOCIOLOGIA VARCHAR(100),
    IN_DISC_EST_SOCIAIS_SOCIOLOGIA VARCHAR(100),
    IN_DISC_INFORMATICA_COMPUTACAO VARCHAR(100),
    IN_DISC_PROFISSIONALIZANTE VARCHAR(100),
    IN_DISC_ATENDIMENTO_ESPECIAIS VARCHAR(100),
    IN_DISC_DIVER_SOCIO_CULTURAL VARCHAR(100),
    IN_DISC_LIBRAS VARCHAR(100),
    IN_DISC_PEDAGOGICAS VARCHAR(100),
    IN_DISC_OUTRAS VARCHAR(100),
    IN_ESPECIALIZACAO VARCHAR(100),
    IN_MESTRADO VARCHAR(100),
    IN_DOUTORADO VARCHAR(100),
    IN_POS_NENHUM VARCHAR(100),
    IN_ESPECIFICO_CRECHE VARCHAR(100),
    IN_ESPECIFICO_PRE_ESCOLA VARCHAR(100),
    IN_ESPECIFICO_ANOS_INICIAIS VARCHAR(100),
    IN_ESPECIFICO_ANOS_FINAIS VARCHAR(100),
    IN_ESPECIFICO_ENS_MEDIO VARCHAR(100),
    IN_ESPECIFICO_EJA VARCHAR(100),
    IN_ESPECIFICO_ED_ESPECIAL VARCHAR(100),
    IN_ESPECIFICO_ED_INDIGENA VARCHAR(100),
    IN_ESPECIFICO_CAMPO VARCHAR(100),
    IN_ESPECIFICO_AMBIENTAL VARCHAR(100),
    IN_ESPECIFICO_DIR_HUMANOS VARCHAR(100),
    IN_ESPECIFICO_DIV_SEXUAL VARCHAR(100),
    IN_ESPECIFICO_DIR_ADOLESC VARCHAR(100),
    IN_ESPECIFICO_AFRO VARCHAR(100),
    IN_ESPECIFICO_OUTROS VARCHAR(100),
    IN_ESPECIFICO_NENHUM VARCHAR(100),
    TP_TIPO_DOCENTE VARCHAR(100),
    TP_TIPO_CONTRATACAO VARCHAR(100),
    ID_TURMA VARCHAR(100),
    TP_TIPO_TURMA VARCHAR(100),
    TP_MEDIACAO_DIDATICO_PEDAGO VARCHAR(100),
    IN_ESPECIAL_EXCLUSIVA VARCHAR(100),
    IN_REGULAR VARCHAR(100),
    IN_EJA VARCHAR(100),
    IN_PROFISSIONALIZANTE VARCHAR(100),
    TP_ETAPA_ENSINO VARCHAR(100),
    CO_CURSO_EDUC_PROFISSIONAL VARCHAR(100),
    CO_REGIAO VARCHAR(100),
    CO_MESORREGIAO VARCHAR(100),
    CO_MICRORREGIAO VARCHAR(100),
    CO_ENTIDADE VARCHAR(100),
    CO_UF VARCHAR(100),
    CO_MUNICIPIO VARCHAR(100),
    CO_DISTRITO VARCHAR(100),
    TP_DEPENDENCIA VARCHAR(100),
    TP_LOCALIZACAO VARCHAR(100),
    TP_CATEGORIA_ESCOLA_PRIVADA VARCHAR(100),
    IN_CONVENIADA_PP VARCHAR(100),
    TP_CONVENIO_PODER_PUBLICO VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_EMP VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_ONG VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIND VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_SIST_S VARCHAR(100),
    IN_MANT_ESCOLA_PRIVADA_S_FINS VARCHAR(100),
    TP_REGULAMENTACAO VARCHAR(100),
    TP_LOCALIZACAO_DIFERENCIADA VARCHAR(100),
    IN_EDUCACAO_INDIGENA VARCHAR(100)
);
COPY DOCENTES_CENTROOESTE_ORIGINAL
FROM '/home/jennifer/Documents/UTFPR/2019-1/Lab BD/microdados_educacao_basica_2018/microdados_ed_basica_2018/DADOS/DOCENTES_CO.CSV' DELIMITER '|' CSV HEADER;
