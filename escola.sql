
DROP TABLE if EXISTS escola cascade;
DROP TABLE if EXISTS tp_situacao_funcionamento;
DROP TABLE if EXISTS tp_faltante;
DROP TABLE if EXISTS tp_dependencia;
DROP TABLE if EXISTS tp_localizacao;
DROP TABLE if EXISTS tp_categoria_escola_privada;
DROP TABLE if EXISTS in_conveniada_pp;
DROP TABLE if EXISTS tp_convenio_poder_publico;
DROP TABLE if EXISTS mantenedor cascade;
DROP TABLE if EXISTS escola_mantenedor;
DROP TABLE if EXISTS local_funcionamento cascade;
DROP TABLE if EXISTS tp_dependencias cascade;
DROP TABLE if EXISTS tp_equipamentos cascade;
DROP TABLE if EXISTS tp_agua cascade;
DROP TABLE if EXISTS tp_regulamentacao cascade;
DROP TABLE if EXISTS tp_esgoto cascade;
DROP TABLE if EXISTS tp_energia cascade;
DROP TABLE if EXISTS tp_lixo cascade;
DROP TABLE if EXISTS tp_internet cascade;
DROP TABLE if EXISTS escola_tp_dependencias;
DROP TABLE if EXISTS escola_tp_equipamentos;
DROP TABLE if EXISTS escola_tp_agua;
DROP TABLE if EXISTS escola_tp_esgoto;
DROP TABLE if EXISTS escola_tp_energia;
DROP TABLE if EXISTS escola_tp_lixo;
DROP TABLE if EXISTS escola_tp_internet;

DROP TABLE if EXISTS tp_aee;
DROP TABLE if EXISTS tp_atividade_complementar;
DROP TABLE if EXISTS tp_indigena_lingua;
DROP TABLE if EXISTS tp_localizacao_diferenciada;
DROP TABLE if EXISTS tp_local_func;
DROP TABLE if EXISTS tp_ocupacao_galpao;
DROP TABLE if EXISTS tp_ocupacao_predio_escolar;


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

CREATE table tp_dependencias(
    tp_dependencias VARCHAR(50) PRIMARY KEY 
);

CREATE table tp_equipamentos(
    tp_equipamentos VARCHAR(50) PRIMARY KEY
);

CREATE table tp_agua(
    tp_agua VARCHAR(50) PRIMARY KEY not null
);

CREATE table tp_esgoto(
    tp_esgoto VARCHAR(50) PRIMARY KEY not null
);

CREATE table tp_energia(
    tp_energia VARCHAR(50) PRIMARY KEY not null
);

CREATE table tp_lixo(
    tp_lixo VARCHAR(50) PRIMARY KEY not null
);

CREATE table tp_internet(
    tp_internet VARCHAR(50) PRIMARY KEY not null
);

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
);

CREATE TABLE tp_local_func(
    tp_local_func VARCHAR(50) PRIMARY KEY
);

CREATE TABLE tp_ocupacao_galpao(
    tp_ocupacao_galpao VARCHAR(20) PRIMARY KEY
);

CREATE TABLE tp_ocupacao_predio_escolar(
    tp_ocupacao_predio_escolar VARCHAR(20) PRIMARY KEY
);

CREATE table local_funcionamento(
    local_funcionamento VARCHAR(50) PRIMARY KEY,
    tp_localizacao_diferenciada VARCHAR(100) REFERENCES tp_localizacao_diferenciada(tp_localizacao_diferenciada) not null,
    tp_local_func VARCHAR(50) REFERENCES tp_local_func(tp_local_func) not null,
    tp_ocupacao_galpao VARCHAR(20) REFERENCES tp_ocupacao_galpao(tp_ocupacao_galpao),
    tp_ocupacao_predio_escolar VARCHAR(20) REFERENCES tp_ocupacao_predio_escolar(tp_ocupacao_predio_escolar)
);

CREATE TABLE oferta_matricula(
    oferta_matricula VARCHAR(100) PRIMARY KEY
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
    local_funcionamento VARCHAR(100) REFERENCES local_funcionamento(local_funcionamento),
    primary key(co_entidade,co_regiao,co_mesorregiao,co_microregiao,co_uf,co_municipio,co_distrito)

);

CREATE TABLE escola_mantenedor(
	tp_mantenedor VARCHAR(50) REFERENCES mantenedor(tp_mantenedor),
	co_entidade INT ,
    co_regiao INT ,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio int,
    co_distrito int,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(tp_mantenedor, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
 
);

CREATE TABLE escola_tp_dependencias(
    tp_dependencias VARCHAR(50) REFERENCES tp_dependencias(tp_dependencias),
	co_entidade INT ,
    co_regiao INT ,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio int,
    co_distrito int,
    qt_salas_existentes int,
    qt_salas_utilizadas int,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(tp_dependencias, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
      
);

CREATE TABLE escola_tp_equipamentos(
    tp_equipamentos VARCHAR(50) REFERENCES tp_equipamentos(tp_equipamentos),
	co_entidade INT ,
    co_regiao INT ,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio int,
    co_distrito int,
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
    qt_comp_administrativo int,
    qt_comp_aluno int,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(tp_equipamentos, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
      
);

CREATE TABLE escola_tp_agua(
    tp_agua VARCHAR(50) REFERENCES tp_agua(tp_agua) not null,
	co_entidade INT not null,
    co_regiao INT not null,
    co_mesorregiao INT not null, 
    co_microregiao int not null,
    co_uf int not null,
    co_municipio int not null,
    co_distrito int not null,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(tp_agua, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
      
);

CREATE TABLE escola_tp_esgoto(
    tp_esgoto VARCHAR(50) REFERENCES tp_esgoto(tp_esgoto),
	co_entidade INT not null,
    co_regiao INT not null,
    co_mesorregiao INT not null, 
    co_microregiao int not null,
    co_uf int not null,
    co_municipio int not null,
    co_distrito int not null,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(tp_esgoto, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
      
);

CREATE TABLE escola_tp_energia(
    tp_energia VARCHAR(50) REFERENCES tp_energia(tp_energia),
	co_entidade INT not null,
    co_regiao INT not null,
    co_mesorregiao INT not null, 
    co_microregiao int not null,
    co_uf int not null,
    co_municipio int not null,
    co_distrito int not null,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(tp_energia, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
      
);

CREATE TABLE escola_tp_lixo(
    tp_lixo VARCHAR(50) REFERENCES tp_lixo(tp_lixo),
	co_entidade INT not null,
    co_regiao INT not null,
    co_mesorregiao INT not null, 
    co_microregiao int not null,
    co_uf int not null,
    co_municipio int not null,
    co_distrito int not null,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(tp_lixo, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
      
);

CREATE TABLE escola_tp_internet(
    tp_internet VARCHAR(50) REFERENCES tp_internet(tp_internet),
	co_entidade INT not null,
    co_regiao INT not null,
    co_mesorregiao INT not null, 
    co_microregiao int not null,
    co_uf int not null,
    co_municipio int not null,
    co_distrito int not null,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(tp_internet, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
      
);

CREATE TABLE escola_oferta_matricula(
	oferta_matricula VARCHAR(50) REFERENCES oferta_matricula(oferta_matricula),
	co_entidade INT ,
    co_regiao INT ,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio int,
    co_distrito int,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(oferta_matricula, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)

);

