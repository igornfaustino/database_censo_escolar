
DROP TABLE if EXISTS escola;
DROP TABLE if EXISTS tp_situacao_funcionamento;
DROP TABLE if EXISTS tp_faltante;
DROP TABLE if EXISTS tp_dependencia;
DROP TABLE if EXISTS tp_localizacao;
DROP TABLE if EXISTS tp_categoria_escola_privada;
DROP TABLE if EXISTS in_conveniada_pp;
DROP TABLE if EXISTS tp_convenio_poder_publico;
DROP TABLE if EXISTS mantenedor;
DROP TABLE if EXISTS escola_mantenedor;
DROP TABLE if EXISTS tp_aee;
DROP TABLE if EXISTS tp_atividade_complementar;
DROP TABLE if EXISTS tp_indigena_lingua;
DROP TABLE if EXISTS tp_localizacao_diferenciada;


create table tp_situacao_funcionamento(
    tp_situacao_funcionamento VARCHAR(50) primary key
);

create table tp_faltante(
    tp_faltante VARCHAR(50) PRIMARY KEY
);

create table tp_dependencia(
    tp_dependencia VARCHAR(50) PRIMARY KEY
);

create table tp_localizacao(
    tp_localizacao VARCHAR(50) PRIMARY KEY
);

create table tp_categoria_escola_privada(
    tp_categoria_escola_privada VARCHAR(50) PRIMARY KEY
);

create table in_conveniada_pp(
    in_conveniada_pp VARCHAR(50) PRIMARY KEY
);

create table tp_convenio_poder_publico(
    tp_convenio_poder_publico VARCHAR(50) PRIMARY KEY
);

CREATE TABLE mantenedor(
	tp_mantenedor VARCHAR(50) PRIMARY KEY
);

CREATE TABLE tp_regulamentacao(
    tp_regulamentacao VARCHAR(50) PRIMARY KEY
);

CREATE TABLE escola (
    co_entidade INT UNIQUE,
    co_regiao INT UNIQUE,
    co_mesorregiao INT UNIQUE,
    co_microregiao int UNIQUE,
    co_uf int UNIQUE,
    co_municipio int UNIQUE,
    co_distrito int UNIQUE,
    no_entidade VARCHAR(100),
    co_orgao_regional VARCHAR(5),
    dt_ano_letivo_inicio DATE, 
    dt_ano_letivo_termino DATE,
    co_escola_sede_vinculada int,
    co_ies_ofertante int,
    qt_funcionarios int,
    in_alimentacao int,
    in_fundamental_ciclos int,
    int_material_esp_quilombola int,
    int_material_esp_indigena int,
    int_material_esp_nao_utiliza int,
    int_educacao_indigena int, 
    co_lingua_indigena int,
    in_brasil_alfabetizado int,
    in_final_semana int,
    in_formacao_alternancia int,
    tp_situacao_funcionamento VARCHAR(50) not null,
    tp_faltante VARCHAR(50) REFERENCES tp_faltante(tp_faltante) not null,
    tp_dependencia VARCHAR(50) REFERENCES tp_dependencia(tp_dependencia) not null,
    tp_localizacao VARCHAR(50) REFERENCES tp_localizacao(tp_localizacao) not null,
    tp_categoria_escola_privada VARCHAR(50) REFERENCES tp_categoria_escola_privada(tp_categoria_escola_privada),
    in_conveniada_pp VARCHAR(50) REFERENCES in_conveniada_pp(in_conveniada_pp),
    tp_convenio_poder_publico VARCHAR(50) REFERENCES tp_convenio_poder_publico(tp_convenio_poder_publico),
    tp_regulamentacao VARCHAR(50) REFERENCES tp_regulamentacao(tp_regulamentacao),
    tp_aee VARCHAR(50) REFERENCES tp_aee(tp_aee),
    tp_atividade_complementar VARCHAR(50) REFERENCES tp_atividade_complementar(tp_atividade_complementar),
    tp_indigena_lingua VARCHAR(100) REFERENCES tp_indigena_lingua(tp_indigena_lingua) not null,
    primary key(co_entidade,co_regiao,co_mesorregiao,co_microregiao,co_uf,co_municipio,co_distrito)

);

CREATE TABLE escola_mantenedor(
	tp_mantenedor VARCHAR(50) REFERENCES mantenedor(tp_mantenedor),
	co_entidade INT references escola(co_entidade),
    co_regiao INT references escola(co_regiao),
    co_mesorregiao INT references escola(co_mesorregiao),
    co_microregiao int references escola(co_microregiao),
    co_uf int references escola(co_uf),
    co_municipio int references escola(co_municipio),
    co_distrito int references escola(co_distrito),

	PRIMARY KEY(tp_mantenedor, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
);

--jonas (vermelhinhos)

CREATE TABLE tp_aee(
    tp_aee VARCHAR(50) PRIMARY KEY
);

CREATE TABLE tp_atividade_complementar(
    tp_atividade_complementar VARCHAR(50) PRIMARY KEY
);

CREATE TABLE tp_indigena_lingua(
    tp_indigena_lingua VARCHAR(100) PRIMARY KEY
);

CREATE TABLE tp_localizacao_diferenciada(
    tp_localizacao_diferenciada VARCHAR(100) PRIMARY KEY
    -- colar em "local_funcionamento": tp_localizacao_diferenciada VARCHAR(100) REFERENCES tp_localizacao_diferenciada(tp_localizacao_diferenciada) not null,
);

CREATE TABLE tp_local_func(
    tp_local_func VARCHAR(50) PRIMARY KEY
    -- colar em "local_funcionamento": tp_local_func VARCHAR(50) REFERENCES tp_local_func(tp_local_func) not null,
);

