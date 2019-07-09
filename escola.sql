
DROP TABLE if EXISTS escola cascade;
DROP TABLE if EXISTS tp_situacao_funcionamento;
DROP TABLE if EXISTS tp_faltante;
DROP TABLE if EXISTS tp_dependencia;
DROP TABLE if EXISTS tp_localizacao;
DROP TABLE if EXISTS tp_categoria_escola_privada;
DROP TABLE if EXISTS escola_conveniada_pp;
DROP TABLE if EXISTS escola_local_funcionamento;
DROP TABLE if EXISTS in_conveniada_pp;
DROP TABLE if EXISTS tp_convenio_poder_publico;
DROP TABLE if EXISTS in_mantenedor cascade;
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
DROP TABLE IF EXISTS oferta_matricula cascade;
DROP TABLE if EXISTS escola_oferta_matricula;



create table tp_situacao_funcionamento(
    tp_situacao_funcionamento INTEGER primary key,
    tp_situacao_funcionamento_nome VARCHAR(150)
);

create table tp_faltante(
    tp_faltante INTEGER PRIMARY KEY, 
    tp_faltante_nome VARCHAR(150)
);

create table tp_dependencia(
    tp_dependencia INTEGER PRIMARY KEY,
    tp_dependencia_nome VARCHAR(150)
);

create table tp_localizacao(
    tp_localizacao INTEGER PRIMARY KEY,
    tp_localizacao_nome VARCHAR(150)

);

create table tp_categoria_escola_privada(
    tp_categoria_escola_privada INTEGER PRIMARY KEY,
    tp_categoria_escola_privada_nome VARCHAR(150)
);

create table in_conveniada_pp(
    in_conveniada_pp VARCHAR(150) PRIMARY KEY

);

create table tp_convenio_poder_publico(
    tp_convenio_poder_publico INTEGER PRIMARY KEY,
    tp_convenio_poder_publico_nome VARCHAR(150)
);

CREATE TABLE in_mantenedor(
	in_mantenedor VARCHAR(150) PRIMARY KEY
);

CREATE TABLE tp_regulamentacao(
    tp_regulamentacao INTEGER PRIMARY KEY,
    tp_regulamentacao_nome VARCHAR(150)
);

CREATE table tp_dependencias(
    tp_dependencias VARCHAR(150) PRIMARY KEY 
);

CREATE table tp_equipamentos(
    tp_equipamentos VARCHAR(150) PRIMARY KEY
);

CREATE table tp_agua(
    tp_agua VARCHAR(150) PRIMARY KEY not null
);

CREATE table tp_esgoto(
    tp_esgoto VARCHAR(150) PRIMARY KEY not null

);

CREATE table tp_energia(
    tp_energia VARCHAR(150) PRIMARY KEY not null
);

CREATE table tp_lixo(
    tp_lixo VARCHAR(150) PRIMARY KEY not null
);

CREATE table tp_internet(
    tp_internet VARCHAR(150) PRIMARY KEY not null
);

CREATE TABLE tp_aee(
    tp_aee INTEGER PRIMARY KEY,
    tp_aee_nome VARCHAR(150)
);

CREATE TABLE tp_atividade_complementar(
    tp_atividade_complementar INTEGER PRIMARY KEY,
    tp_atividade_complementar_nome VARCHAR(150)
);

CREATE TABLE tp_indigena_lingua(
    tp_indigena_lingua INTEGER PRIMARY KEY,
    tp_indigena_lingua_nome VARCHAR(150)
);

CREATE TABLE tp_localizacao_diferenciada(
    tp_localizacao_diferenciada INTEGER PRIMARY KEY,
    tp_localizacao_diferenciada_nome VARCHAR(150)
);

CREATE TABLE tp_local_func(
    tp_local_func VARCHAR(150) PRIMARY KEY
);

CREATE TABLE tp_ocupacao_galpao(
    tp_ocupacao_galpao INTEGER PRIMARY KEY,
    tp_ocupacao_galpao_nome VARCHAR(150)
);

CREATE TABLE tp_ocupacao_predio_escolar(
    tp_ocupacao_predio_escolar INTEGER PRIMARY KEY,
    tp_ocupacao_predio_escolar_nome VARCHAR(150)
);

CREATE table local_funcionamento(
    local_funcionamento VARCHAR(150) PRIMARY KEY,
    tp_localizacao_diferenciada INTEGER REFERENCES tp_localizacao_diferenciada(tp_localizacao_diferenciada) not null,
    tp_local_func VARCHAR(150) REFERENCES tp_local_func(tp_local_func) not null,
    tp_ocupacao_galpao INTEGER REFERENCES tp_ocupacao_galpao(tp_ocupacao_galpao),
    tp_ocupacao_predio_escolar INTEGER REFERENCES tp_ocupacao_predio_escolar(tp_ocupacao_predio_escolar)
);

CREATE TABLE oferta_matricula(
    oferta_matricula VARCHAR(100) PRIMARY KEY
);

CREATE TABLE escola (
    co_entidade INT,
    co_regiao INT,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio int,
    co_distrito int,
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
    tp_situacao_funcionamento INTEGER not null,
    tp_faltante INTEGER REFERENCES tp_faltante(tp_faltante) not null,
    tp_dependencia INTEGER REFERENCES tp_dependencia(tp_dependencia) not null,
    tp_localizacao INTEGER REFERENCES tp_localizacao(tp_localizacao) not null,
    tp_categoria_escola_privada INTEGER REFERENCES tp_categoria_escola_privada(tp_categoria_escola_privada),
    tp_convenio_poder_publico INTEGER REFERENCES tp_convenio_poder_publico(tp_convenio_poder_publico),
    tp_regulamentacao INTEGER REFERENCES tp_regulamentacao(tp_regulamentacao),
    tp_aee INTEGER REFERENCES tp_aee(tp_aee),
    tp_atividade_complementar INTEGER REFERENCES tp_atividade_complementar(tp_atividade_complementar),
    tp_indigena_lingua INTEGER  REFERENCES tp_indigena_lingua(tp_indigena_lingua) not null,
    local_funcionamento VARCHAR(150) REFERENCES local_funcionamento(local_funcionamento),
    primary key(co_entidade,co_regiao,co_mesorregiao,co_microregiao,co_uf,co_municipio,co_distrito)

);

CREATE TABLE escola_conveniada_pp(
	in_conveniada_pp VARCHAR(150) REFERENCES in_conveniada_pp(in_conveniada_pp),
	co_entidade INT ,
    co_regiao INT ,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio int,
    co_distrito int,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(in_conveniada_pp, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
 
);

CREATE TABLE escola_local_funcionamento(
	local_funcionamento VARCHAR(150) REFERENCES local_funcionamento(local_funcionamento),
	co_entidade INT ,
    co_regiao INT ,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio int,
    co_distrito int,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(local_funcionamento, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
 
);

CREATE TABLE escola_mantenedor(
	in_mantenedor VARCHAR(150) REFERENCES in_mantenedor(in_mantenedor),
	co_entidade INT ,
    co_regiao INT ,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio int,
    co_distrito int,
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) on delete cascade,
	PRIMARY KEY(in_mantenedor, co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito)
 
);

CREATE TABLE escola_tp_dependencias(
    tp_dependencias VARCHAR(150) REFERENCES tp_dependencias(tp_dependencias),
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
    tp_equipamentos VARCHAR(150) REFERENCES tp_equipamentos(tp_equipamentos),
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
    tp_agua VARCHAR(150) REFERENCES tp_agua(tp_agua) not null,
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
    tp_esgoto VARCHAR(150) REFERENCES tp_esgoto(tp_esgoto),
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
    tp_energia VARCHAR(150) REFERENCES tp_energia(tp_energia),
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
    tp_lixo VARCHAR(150) REFERENCES tp_lixo(tp_lixo),
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
    tp_internet VARCHAR(150) REFERENCES tp_internet(tp_internet),
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
	oferta_matricula VARCHAR(100) REFERENCES oferta_matricula(oferta_matricula),
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

