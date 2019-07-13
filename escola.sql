DROP TABLE if EXISTS escola cascade;
DROP TABLE if EXISTS tp_situacao_funcionamento;
DROP TABLE if EXISTS tp_faltante;
DROP TABLE if EXISTS tp_dependencia;
DROP TABLE if EXISTS tp_localizacao;
DROP TABLE if EXISTS tp_categoria_escola_privada;
DROP TABLE if EXISTS escola_conveniada_pp;
DROP TABLE if EXISTS escola_local_funcionamento;
DROP TABLE if EXISTS in_conveniada_pp;
DROP TABLE if EXISTS escola_in_conveniada_pp;
DROP TABLE if EXISTS tp_convenio_poder_publico;
DROP TABLE if EXISTS in_mantenedor cascade;
DROP TABLE if EXISTS escola_in_mantenedor;
DROP TABLE if EXISTS local_funcionamento cascade;
DROP TABLE if EXISTS in_dependencias cascade;
DROP TABLE if EXISTS in_equipamentos cascade;
DROP TABLE if EXISTS in_agua cascade;
DROP TABLE if EXISTS tp_regulamentacao cascade;
DROP TABLE if EXISTS in_esgoto cascade;
DROP TABLE if EXISTS in_energia cascade;
DROP TABLE if EXISTS in_lixo cascade;
DROP TABLE if EXISTS in_internet cascade;
DROP TABLE if EXISTS escola_in_dependencias;
DROP TABLE if EXISTS escola_in_equipamentos;
DROP TABLE if EXISTS escola_in_agua;
DROP TABLE if EXISTS escola_in_esgoto;
DROP TABLE if EXISTS escola_in_energia;
DROP TABLE if EXISTS escola_in_lixo;
DROP TABLE if EXISTS escola_in_internet;
DROP TABLE if EXISTS tp_aee;
DROP TABLE if EXISTS tp_atividade_complementar;
DROP TABLE if EXISTS tp_indigena_lingua;
DROP TABLE if EXISTS tp_localizacao_diferenciada;
DROP TABLE if EXISTS tp_ocupacao_galpao;
DROP TABLE if EXISTS tp_ocupacao_predio_escolar;
DROP TABLE IF EXISTS oferta_matricula cascade;
DROP TABLE if EXISTS escola_oferta_matricula cascade;
DROP TABLE if EXISTS in_alimentacao cascade;
DROP TABLE if EXISTS escola_in_alimentacao cascade;
DROP TABLE if EXISTS in_fundamental_ciclos cascade;
DROP TABLE if EXISTS escola_in_fundamental_ciclos cascade;
DROP TABLE if EXISTS in_material cascade;
DROP TABLE if EXISTS escola_in_material cascade;
DROP TABLE if EXISTS in_educacao_indigena cascade;
DROP TABLE if EXISTS escola_in_educacao_indigena cascade;
DROP TABLE if EXISTS in_brasil_alfabetizado cascade;
DROP TABLE if EXISTS escola_in_brasil_alfabetizado cascade;
DROP TABLE if EXISTS in_final_semana cascade;
DROP TABLE if EXISTS escola_in_final_semana cascade;
DROP TABLE if EXISTS in_formacao_alternancia cascade;
DROP TABLE if EXISTS escola_in_formacao_alternancia cascade;
DROP TABLE if EXISTS in_local_funcionamento cascade;
DROP TABLE if EXISTS escola_in_local_funcionamento cascade;

create table tp_situacao_funcionamento
(
    tp_situacao_funcionamento INTEGER primary key,
    tp_situacao_funcionamento_nome VARCHAR(150)
);

create table tp_faltante
(
    tp_faltante INTEGER PRIMARY KEY,
    tp_faltante_nome VARCHAR(150)
);

create table tp_dependencia
(
    tp_dependencia INTEGER PRIMARY KEY,
    tp_dependencia_nome VARCHAR(150)
);

create table tp_localizacao
(
    tp_localizacao INTEGER PRIMARY KEY,
    tp_localizacao_nome VARCHAR(150)

);

create table tp_categoria_escola_privada
(
    tp_categoria_escola_privada INTEGER PRIMARY KEY,
    tp_categoria_escola_privada_nome VARCHAR(150)
);

create table in_conveniada_pp
(
    in_conveniada_pp VARCHAR(150) PRIMARY KEY

);

create table tp_convenio_poder_publico
(
    tp_convenio_poder_publico INTEGER PRIMARY KEY,
    tp_convenio_poder_publico_nome VARCHAR(150)
);

CREATE TABLE in_mantenedor
(
    in_mantenedor VARCHAR(150) PRIMARY KEY
);

CREATE TABLE tp_regulamentacao
(
    tp_regulamentacao INTEGER PRIMARY KEY,
    tp_regulamentacao_nome VARCHAR(150)
);

CREATE table in_dependencias
(
    in_dependencias VARCHAR(150) PRIMARY KEY
);

CREATE table in_equipamentos
(
    in_equipamentos VARCHAR(150) PRIMARY KEY
);

CREATE table in_agua
(
    in_agua VARCHAR(150) PRIMARY KEY not null
);

CREATE table in_esgoto
(
    in_esgoto VARCHAR(150) PRIMARY KEY not null

);

CREATE table in_energia
(
    in_energia VARCHAR(150) PRIMARY KEY not null
);

CREATE table in_lixo
(
    in_lixo VARCHAR(150) PRIMARY KEY not null
);

CREATE table in_internet
(
    in_internet VARCHAR(150) PRIMARY KEY not null
);

CREATE table in_alimentacao
(
    in_alimentacao VARCHAR(150) PRIMARY KEY not null
);

CREATE TABLE tp_aee
(
    tp_aee INTEGER PRIMARY KEY,
    tp_aee_nome VARCHAR(150)
);

CREATE TABLE tp_atividade_complementar
(
    tp_atividade_complementar INTEGER PRIMARY KEY,
    tp_atividade_complementar_nome VARCHAR(150)
);

CREATE TABLE tp_indigena_lingua
(
    tp_indigena_lingua INTEGER PRIMARY KEY,
    tp_indigena_lingua_nome VARCHAR(150)
);

CREATE TABLE tp_localizacao_diferenciada
(
    tp_localizacao_diferenciada INTEGER PRIMARY KEY,
    tp_localizacao_diferenciada_nome VARCHAR(150)
);

CREATE TABLE tp_ocupacao_galpao
(
    tp_ocupacao_galpao INTEGER PRIMARY KEY,
    tp_ocupacao_galpao_nome VARCHAR(150)
);

CREATE TABLE tp_ocupacao_predio_escolar
(
    tp_ocupacao_predio_escolar INTEGER PRIMARY KEY,
    tp_ocupacao_predio_escolar_nome VARCHAR(150)
);

CREATE table in_local_funcionamento
(
    in_local_funcionamento VARCHAR(150) PRIMARY KEY
);

CREATE table in_fundamental_ciclos
(
    in_fundamental_ciclos VARCHAR(150) PRIMARY KEY
);

CREATE table in_material
(
    in_material VARCHAR(150) PRIMARY KEY
);

CREATE table in_educacao_indigena
(
    in_educacao_indigena VARCHAR(150) PRIMARY KEY
);

CREATE table in_brasil_alfabetizado
(
    in_brasil_alfabetizado VARCHAR(150) PRIMARY KEY
);

CREATE table in_final_semana
(
    in_final_semana VARCHAR(150) PRIMARY KEY
);

CREATE table in_formacao_alternancia
(
    in_formacao_alternancia VARCHAR(150) PRIMARY KEY
);

CREATE TABLE oferta_matricula
(
    oferta_matricula VARCHAR(100) PRIMARY KEY
);

CREATE TABLE escola
(
    co_entidade varchar(8),
    co_regiao INT,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio varchar(7),
    co_distrito varchar(9),
    no_entidade VARCHAR(100),
    co_orgao_regional VARCHAR(5),
    dt_ano_letivo_inicio VARCHAR(20),
    dt_ano_letivo_termino VARCHAR(20),
    co_escola_sede_vinculada VARCHAR(8),
    co_ies_ofertante VARCHAR(14),
    qt_funcionarios int,
    qt_equip_tv int,
    qt_equip_videocassete int,
    qt_equip_dvd int,
    qt_equip_parabolica int,
    qt_equip_copiadora int,
    qt_equip_retroprojetor int,
    qt_equip_impressora int,
    qt_equip_impressora_mult int,
    qt_equip_som int,
    qt_equip_multimidia int,
    qt_equip_fax int,
    qt_equip_foto int,
    qt_computador int,
    qt_com_administrativo int,
    qt_comp_aluno int,
    tp_situacao_funcionamento INTEGER,
    tp_dependencia INTEGER REFERENCES tp_dependencia (tp_dependencia),
    tp_localizacao INTEGER REFERENCES tp_localizacao (tp_localizacao),
    tp_categoria_escola_privada INTEGER REFERENCES tp_categoria_escola_privada(tp_categoria_escola_privada),
    tp_convenio_poder_publico INTEGER REFERENCES tp_convenio_poder_publico (tp_convenio_poder_publico),
    tp_regulamentacao INTEGER REFERENCES tp_regulamentacao (tp_regulamentacao),
    tp_aee INTEGER REFERENCES tp_aee (tp_aee),
    tp_atividade_complementar INTEGER REFERENCES tp_atividade_complementar (tp_atividade_complementar),
    tp_indigena_lingua INTEGER  REFERENCES tp_indigena_lingua (tp_indigena_lingua),
    primary key (co_entidade,co_regiao,co_mesorregiao,co_microregiao,co_uf,co_municipio,co_distrito)

);

    CREATE TABLE escola_conveniada_pp
    (
        in_conveniada_pp VARCHAR(150) REFERENCES in_conveniada_pp(in_conveniada_pp),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_conveniada_pp, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_local_funcionamento
    (
        in_local_funcionamento VARCHAR(150) REFERENCES in_local_funcionamento(in_local_funcionamento),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_local_funcionamento, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_mantenedor
    (
        in_mantenedor VARCHAR(150) REFERENCES in_mantenedor(in_mantenedor),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_mantenedor, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_dependencias
    (
        in_dependencias VARCHAR(150) REFERENCES in_dependencias(in_dependencias),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_dependencias, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
    );

    CREATE TABLE escola_in_equipamentos
    (
        in_equipamentos VARCHAR(150) REFERENCES in_equipamentos(in_equipamentos),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_equipamentos, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_agua
    (
        in_agua VARCHAR(150) REFERENCES in_agua(in_agua) not null,
        co_entidade varchar(8) not null,
        co_regiao INT not null,
        co_mesorregiao INT not null,
        co_microregiao int not null,
        co_uf int not null,
        co_municipio VARCHAR(7) not null,
        co_distrito VARCHAR(9) not null,
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_agua, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_esgoto
    (
        in_esgoto VARCHAR(150) REFERENCES in_esgoto(in_esgoto),
        co_entidade varchar(8) not null,
        co_regiao INT not null,
        co_mesorregiao INT not null,
        co_microregiao int not null,
        co_uf int not null,
        co_municipio VARCHAR(7) not null,
        co_distrito VARCHAR(9) not null,
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_esgoto, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_energia
    (
        in_energia VARCHAR(150) REFERENCES in_energia(in_energia),
        co_entidade varchar(8) not null,
        co_regiao INT not null,
        co_mesorregiao INT not null,
        co_microregiao int not null,
        co_uf int not null,
        co_municipio VARCHAR(7) not null,
        co_distrito VARCHAR(9) not null,
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_energia, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_lixo
    (
        in_lixo VARCHAR(150) REFERENCES in_lixo(in_lixo),
        co_entidade varchar(8) not null,
        co_regiao INT not null,
        co_mesorregiao INT not null,
        co_microregiao int not null,
        co_uf int not null,
        co_municipio VARCHAR(7) not null,
        co_distrito VARCHAR(9) not null,
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_lixo, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_internet
    (
        in_internet VARCHAR(150) REFERENCES in_internet(in_internet),
        co_entidade varchar(8) not null,
        co_regiao INT not null,
        co_mesorregiao INT not null,
        co_microregiao int not null,
        co_uf int not null,
        co_municipio VARCHAR(7) not null,
        co_distrito VARCHAR(9) not null,
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_internet, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_oferta_matricula
    (
        oferta_matricula VARCHAR(100) REFERENCES oferta_matricula(oferta_matricula),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(oferta_matricula, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_alimentacao
    (
        in_alimentacao VARCHAR(150) REFERENCES in_alimentacao(in_alimentacao),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_alimentacao, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_fundamental_ciclos
    (
        in_fundamental_ciclos VARCHAR(150) REFERENCES in_fundamental_ciclos(in_fundamental_ciclos),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_fundamental_ciclos, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_material
    (
        in_material VARCHAR(150) REFERENCES in_material(in_material),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_material, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_educacao_indigena
    (
        in_educacao_indigena VARCHAR(150) REFERENCES in_educacao_indigena(in_educacao_indigena),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_educacao_indigena, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_brasil_alfabetizado
    (
        in_brasil_alfabetizado VARCHAR(150) REFERENCES in_brasil_alfabetizado(in_brasil_alfabetizado),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_brasil_alfabetizado, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_final_semana
    (
        in_final_semana VARCHAR(150) REFERENCES in_final_semana (in_final_semana),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_final_semana, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );

    CREATE TABLE escola_in_formacao_alternancia
    (
        in_formacao_alternancia VARCHAR(150) REFERENCES in_formacao_alternancia (in_formacao_alternancia),
        co_entidade varchar(8) ,
        co_regiao INT ,
        co_mesorregiao INT,
        co_microregiao int,
        co_uf int,
        co_municipio VARCHAR(7),
        co_distrito VARCHAR(9),
        FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
        PRIMARY KEY(in_formacao_alternancia, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

    );