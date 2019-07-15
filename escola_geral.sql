DROP TABLE IF EXISTS escola_original;
create table escola_original (
	nu_ano_censo INT,
	co_entidade VARCHAR(8),
	no_entidade VARCHAR(100),
	co_orgao_regional VARCHAR(5),
	tp_situacao_funcionamento INT,
	dt_ano_letivo_inicio VARCHAR(20), 
	dt_ano_letivo_termino VARCHAR(20),
	co_regiao INT,
	co_mesorregiao INT,
	co_microregiao int,
	co_uf int,
	co_municipio VARCHAR(7),
	co_distrito VARCHAR(9),
	tp_dependencia INT,
	tp_localizacao INT,
	tp_categoria_escola_privada INT,
	in_conveniada_pp INT,
	tp_convenio_poder_publico INT,
	in_mat_escola_privada_emp INT,
	in_mat_escola_privada_ong INT,
	in_mat_escola_privada_sind INT,
	in_mat_escola_privada_sist_s INT,
	in_mat_escola_privada_s_fins INT,
	co_escola_sede_vinculada VARCHAR(8),
	co_ies_ofertante VARCHAR(14),
	tp_regulamentacao INT,
	in_local_func_predio_escolar INT,
	tp_ocupacao_predio_escolar INT,
	in_local_func_salas_empresa INT,
	in_local_func_socioeducativo INT,
	in_local_func_unid_prisional INT,
	in_local_func_prisional_socio INT,
	in_local_func_templo_igreja INT,
	in_local_func_casa_professor INT,
	in_local_func_galpao INT,
	tp_ocupacao_galpao INT,
	in_local_fun_salas_outra_esc INT,
	in_local_fun_salas_outros INT,
	in_predio_compartilhado INT,
	in_agua_filtrada INT,
	in_agua_rede_publica INT,
	in_agua_poco_artesiano INT,
	in_agua_cacimba INT,
	in_agua_fonte_rio INT,
	in_agua_inexistente INT,
	in_energia_rede_publica INT,
	in_energia_gerador INT,
	in_energia_outros INT,
	in_energia_inexistente INT,
	in_esgoto_rede_publica INT,
	in_esgoto_fossa INT,
	in_esgoto_inexistente INT,
	in_lixo_coleta_periodica INT,
	in_lixo_queima INT,
	in_lixo_joga_outra_area INT,
	in_lixo_recicla INT,
	in_lixo_enterra INT,
	in_lixo_outros INT,
	in_sala_diretoria INT,
	in_sala_professor INT,
	in_laboratorio_informatica INT,
	in_laboratorio_ciencias INT,
	in_sala_atendimento_especial INT,
	in_quadra_esporte_coberta INT,
	in_quadra_esporte_descoberta INT,
	in_quadra_esportes INT,
	in_cozinha INT,
	in_biblioteca INT,
	in_sala_leitura INT,
	in_biblioteca_sala_leitura INT,
	in_parque_infantil INT,
	in_bercario INT,
	in_banheiro_fora_predio INT,
	in_banheiro_dentro_predio INT,
	in_banheiro_ei INT,
	in_banheiro_pne INT,
	in_dependencias_pne INT,
	in_secretaria INT,
	in_banheira_chuveiro INT,
	in_refeitorio INT,
	in_despensa INT,
	in_almoxarifado INT,
	in_auditorio INT,
	in_patio_coberto INT,
	in_patio_descoberto INT,
	in_alojam_aluno INT,
	in_alojam_professor INT,
	in_area_verde INT,
	in_lavanderia INT,
	in_dependencia_outras INT,
	qt_salas_existentes INT,
	qt_salas_utilizadas INT,
	in_equip_tv INT,
	in_equip_videocassete INT,
	in_equip_dvd INT,
	in_equip_parabolica INT,
	in_equip_copiadora INT,
	in_equip_retroprojetor INT,
	in_equip_impressora INT,
	in_equip_impressora_mult INT,
	in_equip_som INT,
	in_equip_multimidia INT,
	in_equip_fax INT,
	in_equip_foto INT,
	in_computador INT,
	qt_equip_tv INT,
	qt_equip_videocassete INT,
	qt_equip_dvd INT,
	qt_equip_parabolica INT,
	qt_equip_copiadora INT,
	qt_equip_retroprojetor INT,
	qt_equip_impressora INT,
	qt_equip_impressora_mult INT,
	qt_equip_som INT,
	qt_equip_multimidia INT,
	qt_equip_fax INT,
	qt_equip_foto INT,
	qt_computador INT,
	qt_com_administrativo INT,
	qt_comp_aluno INT,
	in_internet INT,
	in_banda_larga INT,
	qt_funcionarios int,
	in_alimentacao int,
	tp_aee INT,
	tp_atividade_complementar INT,
	in_fundamental_ciclos INT,
	tp_localizacao_diferenciada INT,
	in_material_esp_quilombola int,
	in_material_esp_indigena int,
	in_material_esp_nao_utiliza int,
	in_educacao_indigena int, 
	tp_indigena_lingua int,
	co_lingua_indigena int,
	in_brasil_alfabetizado int,
	in_final_semana int,
	in_formacao_alternancia int,
	in_mediacao_presencial int,
	in_mediacao_semipresencial int,
	in_mediacao_ead int,
	in_especil_exclusiva int,
	in_regular int,
	in_eja int,
	in_profissionalizante int,
	in_comum_creche int,
	in_comum_pre int,
	in_comum_fund_ai int,
	in_comum_fund_af int,
	in_comum_medio_medio int,
	in_comum_medio_integrado int,
	in_comum_medio_normal int,
	in_esp_exclusiva_creche int,
	in_esp_exclusiva_pre int,
	in_esp_exclusiva_fund_ai int,
	in_esp_exclusiva_fund_af int,
	in_esp_exclusiva_medio_medio int,
	n_esp_exclusiva_medio_integrado int,
	n_esp_exclusiva_medio_normal int,
	in_comum_eja_fund int,
	in_comum_eja_meio int,
	in_comum_eja_prof int,
	in_esp_exclusiva_eja_fund int,
	in_esp_exclusiva_eja_medio int,
	in_esp_exclusiva_eja_prof int,
	in_esp_comum_prof int,
	in_esp_exclusiva_prof int,

	primary key(co_entidade,co_regiao,co_mesorregiao,co_microregiao,co_uf,co_municipio,co_distrito)
)


--TODO: CARREGAR CSV


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


------------------------------------------------------


insert into in_mantenedor (in_mantenedor) values
('IN_MAT_ESCOLA_PRIVADA_EMP'),
('IN_MAT_ESCOLA_PRIVADA_ONG'),
('IN_MAT_ESCOLA_PRIVADA_SIND'),
('IN_MAT_ESCOLA_PRIVADA_SIST_S'),
('IN_MAT_ESCOLA_PRIVADA_S_FINS');

insert into in_local_funcionamento(in_local_funcionamento) VALUES
('IN_LOCAL_FUNC_PREDIO_ESCOLAR'),
('IN_LOCAL_FUNC_SALAS_EMPRESA'),
('IN_LOCAL_FUNC_SOCIOEDUCATIVO'),
('IN_LOCAL_FUNC_UNID_PRISIONAL'),
('IN_LOCAL_FUNC_PRISIONAL_SOCIO'),
('IN_LOCAL_FUNC_TEMPLO_IGREJA'),
('IN_LOCAL_FUNC_CASA_PROFESSOR'),
('IN_LOCAL_FUNC_GALPAO'),
('IN_LOCAL_FUN_SALAS_OUTRA_ESC'),
('IN_LOCAL_FUN_SALAS_OUTROS'),
('IN_PREDIO_COMPARTILHADO');

insert into in_agua(in_agua) VALUES
('IN_AGUA_FILTRADA'),
('IN_AGUA_REDE_PUBLICA'),
('IN_AGUA_POCO_ARTESIANO'),
('IN_AGUA_CACIMBA'),
('IN_AGUA_FONTE_RIO'),
('IN_AGUA_INEXISTENTE');

insert into in_energia(in_energia) VALUES
('IN_ENERGIA_REDE_PUBLICA'),
('IN_ENERGIA_GERADOR'),
('IN_ENERGIA_OUTROS'),
('IN_ENERGIA_INEXISTENTE');

insert into in_esgoto(in_esgoto) VALUES
('IN_ESGOTO_REDE_PUBLICA'),
('IN_ESGOTO_FOSSA'),
('IN_ESGOTO_INEXISTENTE');

insert into in_lixo(in_lixo) VALUES
('IN_LIXO_COLETA_PERIODICA'),
('IN_LIXO_QUEIMA'),
('IN_LIXO_JOGA_OUTRA_AREA'),
('IN_LIXO_RECICLA'),
('IN_LIXO_ENTERRA'),
('IN_LIXO_OUTROS');

insert into in_dependencias(in_dependencias) VALUES
('IN_SALA_DIRETORIA'),
('IN_SALA_PROFESSOR'),
('IN_SALA_ATENDIMENTO_ESPECIAL'),
('IN_SALA_LEITURA'),
('IN_LABORATORIO_INFORMATICA'),
('IN_LABORATORIO_CIENCIAS'),
('IN_QUADRA_ESPORTE_COBERTA'),
('IN_QUADRA_ESPORTE_DESCOBERTA'),
('IN_QUADRA_ESPORTES'),
('IN_COZINHA'),
('IN_BIBLIOTECA'),
('IN_BIBLIOTECA_SALA_LEITURA'),
('IN_PARQUE_INFANTIL'),
('IN_BERCARIO'),
('IN_BANHEIRO_FORA_PREDIO'),
('IN_BANHEIRO_DENTRO_PREDIO'),
('IN_BANHEIRO_EI'),
('IN_BANHEIRO_PNE'),
('IN_DEPENDENCIAS_PNE'),
('IN_SECRETARIA'),
('IN_BANHEIRA_CHUVEIRO'),
('IN_REFEITORIO'),
('IN_DESPENSA'),
('IN_ALMOXARIFADO'),
('IN_AUDITORIO'),
('IN_PATIO_COBERTO'),
('IN_PATIO_DESCOBERTO'),
('IN_ALOJAM_ALUNO'),
('IN_ALOJAM_PROFESSOR'),
('IN_AREA_VERDE'),
('IN_LAVANDERIA'),
('IN_DEPENDENCIA_OUTRAS');


insert into in_equipamentos(in_equipamentos) VALUES
('IN_EQUIP_TV'),
('IN_EQUIP_VIDEOCASSETE'),
('IN_EQUIP_DVD'),
('IN_EQUIP_PARABOLICA'),
('IN_EQUIP_COPIADORA'),
('IN_EQUIP_RETROPROJETOR'),
('IN_EQUIP_IMPRESSORA'),
('IN_EQUIP_IMPRESSORA_MULT'),
('IN_EQUIP_SOM'),
('IN_EQUIP_MULTIMIDIA'),
('IN_EQUIP_FAX'),
('IN_EQUIP_FOTO'),
('IN_COMPUTADOR');

insert into in_internet(in_internet) VALUES
('IN_INTERNET'),
('IN_BANDA_LARGA');

insert into in_alimentacao(in_alimentacao) VALUES
('IN_ALIMENTACAO');

insert into in_educacao_indigena(in_educacao_indigena) VALUES
('IN_EDUCACAO_INDIGENA');

insert into in_brasil_alfabetizado(in_brasil_alfabetizado) VALUES
('IN_BRASIL_ALFABETIZADO');

insert into in_final_semana(in_final_semana) VALUES
('IN_FINAL_SEMANA');

insert into in_formacao_alternancia(in_formacao_alternancia) VALUES
('IN_FORMACAO_ALTERNANCIA');

insert into in_conveniada_pp(in_conveniada_pp) VALUES
('IN_CONVENIADA_PP');

insert into in_fundamental_ciclos(in_fundamental_ciclos) VALUES
('IN_FUNDAMENTAL_CICLOS');

insert into in_material(in_material) VALUES
('IN_MATERIAL_ESP_QUILOMBOLA'),
('IN_MATERIAL_ESP_INDIGENA'),
('IN_MATERIAL_ESP_NAO_UTILIZA');


-------------------------------------------------

INSERT INTO tp_situacao_funcionamento(tp_situacao_funcionamento, tp_situacao_funcionamento_nome) VALUES
(1, 'Em atividade'),
(2, 'Paralisada'),
(3, 'Extinta (ano do Censo)'),
(4, 'Extinta (em anos anteriores)');

INSERT INTO tp_faltante(tp_faltante, tp_faltante_nome) VALUES
(0, 'Escola concluiu o Censo 2018'),
(1, 'Escola faltante'),
(2, 'Escola nova que não preencheu o Censo 2018'),
(3, 'Escola com todas as matrículas não confirmadas'),
(4, 'Escola aberta(não encerrou o Censo 2018)'),
(5, 'Escola exclusiva de atendimento educacional especializado (AEE) ou atividade complementar ou FIC (nenhum aluno possui matrícula de escolarização)');

INSERT INTO tp_dependencia (tp_dependencia, tp_dependencia_nome) VALUES
(1, 'Federal'),
(2, 'Estadual'),
(3, 'Municipal'),
(4, 'Privada');

INSERT INTO tp_localizacao (tp_localizacao, tp_localizacao_nome) VALUES
(1, 'Urbana'),
(2, 'Rural');

INSERT INTO tp_categoria_escola_privada (tp_categoria_escola_privada, tp_categoria_escola_privada_nome) VALUES
(1, 'Particular'),
(2, 'Comunitaria'),
(3, 'Confessional'),
(4, 'Filantropica');

INSERT INTO tp_convenio_poder_publico (tp_convenio_poder_publico, tp_convenio_poder_publico_nome) VALUES
(1, 'Municial'),
(2, 'Estadual'),
(3, 'Estadual e municipal');

INSERT INTO tp_regulamentacao (tp_regulamentacao, tp_regulamentacao_nome) VALUES
(0, 'Não'),
(1, 'Sim'),
(2, 'Em tramitação');

INSERT INTO tp_aee (tp_aee, tp_aee_nome) VALUES
(0, 'Não oferece'),
(1, 'Não exclusivamente'),
(2, 'Exclusivamente');

INSERT INTO tp_atividade_complementar (tp_atividade_complementar, tp_atividade_complementar_nome) VALUES
(0, 'Não oferece'),
(1, 'Não exclusivamente'),
(2, 'Exclusivamente');

INSERT INTO tp_indigena_lingua (tp_indigena_lingua, tp_indigena_lingua_nome) VALUES
(1, 'Somente em lingua indigena'),
(2, 'Somente em lingua portuguesa'),
(3, 'Em lingua indigina e em lingua portuguesa');

INSERT INTO tp_localizacao_diferenciada (tp_localizacao_diferenciada, tp_localizacao_diferenciada_nome) VALUES
(0, 'A escola nao está em área de localização diferenciada'),
(1, 'Área de assentamento'),
(2, 'Terra indígena'),
(3, 'Área remanescente de quilombos'),
(4, 'Unidade de uso sustentável'),
(5, 'Unidade de uso sustentável em terra indígena'),
(6, 'Unidade de uso sustentável em área remanescente de quilombos');



--------------------------------------------------



insert into escola
select co_entidade , co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio , co_distrito ,no_entidade, co_orgao_regional , dt_ano_letivo_inicio, dt_ano_letivo_termino , co_escola_sede_vinculada , co_ies_ofertante, qt_funcionarios, qt_equip_tv, qt_equip_videocassete, qt_equip_dvd, qt_equip_parabolica, qt_equip_copiadora, qt_equip_retroprojetor, qt_equip_impressora, qt_equip_impressora_mult, qt_equip_som, qt_equip_multimidia, qt_equip_fax, qt_equip_foto, qt_computador, qt_com_administrativo, qt_comp_aluno, tp_situacao_funcionamento, tp_dependencia, tp_localizacao,  tp_categoria_escola_privada, tp_convenio_poder_publico, tp_regulamentacao, tp_aee, tp_atividade_complementar, tp_indigena_lingua
from escola_original;

insert into escola_conveniada_pp
SELECT 'IN_CONVENIADA_PP', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_CONVENIADA_PP = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUNC_PREDIO_ESCOLAR', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUNC_PREDIO_ESCOLAR = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUNC_SALAS_EMPRESA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUNC_SALAS_EMPRESA = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUNC_SOCIOEDUCATIVO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUNC_SOCIOEDUCATIVO = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUNC_UNID_PRISIONAL', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUNC_UNID_PRISIONAL = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUNC_PRISIONAL_SOCIO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUNC_PRISIONAL_SOCIO = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUNC_TEMPLO_IGREJA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUNC_TEMPLO_IGREJA = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUNC_CASA_PROFESSOR', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUNC_CASA_PROFESSOR = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUNC_GALPAO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUNC_GALPAO = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUN_SALAS_OUTRA_ESC', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUN_SALAS_OUTRA_ESC = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_LOCAL_FUN_SALAS_OUTROS', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LOCAL_FUN_SALAS_OUTROS = 1;

insert into escola_in_local_funcionamento
SELECT 'IN_PREDIO_COMPARTILHADO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_PREDIO_COMPARTILHADO = 1;

insert into escola_in_mantenedor
SELECT 'IN_MAT_ESCOLA_PRIVADA_EMP', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_MAT_ESCOLA_PRIVADA_EMP = 1;

insert into escola_in_mantenedor
SELECT 'IN_MAT_ESCOLA_PRIVADA_ONG', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_MAT_ESCOLA_PRIVADA_ONG = 1;

insert into escola_in_mantenedor
SELECT 'IN_MAT_ESCOLA_PRIVADA_SIND', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_MAT_ESCOLA_PRIVADA_SIND = 1;

insert into escola_in_mantenedor
SELECT 'IN_MAT_ESCOLA_PRIVADA_SIST_S', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_MAT_ESCOLA_PRIVADA_SIST_S = 1;

insert into escola_in_mantenedor
SELECT 'IN_MAT_ESCOLA_PRIVADA_S_FINS', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_MAT_ESCOLA_PRIVADA_S_FINS = 1;

insert into escola_in_dependencias
SELECT 'IN_SALA_DIRETORIA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_SALA_DIRETORIA = 1;

insert into escola_in_dependencias
SELECT 'IN_SALA_PROFESSOR', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_SALA_PROFESSOR = 1;

insert into escola_in_dependencias
SELECT 'IN_SALA_ATENDIMENTO_ESPECIAL', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_SALA_ATENDIMENTO_ESPECIAL = 1;

insert into escola_in_dependencias
SELECT 'IN_SALA_LEITURA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_SALA_LEITURA = 1;

insert into escola_in_dependencias
SELECT 'IN_LABORATORIO_INFORMATICA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LABORATORIO_INFORMATICA = 1;

insert into escola_in_dependencias
SELECT 'IN_LABORATORIO_CIENCIAS', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LABORATORIO_CIENCIAS = 1;

insert into escola_in_dependencias
SELECT 'IN_QUADRA_ESPORTE_COBERTA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_QUADRA_ESPORTE_COBERTA = 1;

insert into escola_in_dependencias
SELECT 'IN_QUADRA_ESPORTE_DESCOBERTA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_QUADRA_ESPORTE_DESCOBERTA = 1;

insert into escola_in_dependencias
SELECT 'IN_QUADRA_ESPORTES', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_QUADRA_ESPORTES = 1;

insert into escola_in_dependencias
SELECT 'IN_COZINHA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_COZINHA = 1;

insert into escola_in_dependencias
SELECT 'IN_BIBLIOTECA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BIBLIOTECA = 1;

insert into escola_in_dependencias
SELECT 'IN_BIBLIOTECA_SALA_LEITURA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BIBLIOTECA_SALA_LEITURA = 1;

insert into escola_in_dependencias
SELECT 'IN_PARQUE_INFANTIL', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_PARQUE_INFANTIL = 1;

insert into escola_in_dependencias
SELECT 'IN_BERCARIO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BERCARIO = 1;

insert into escola_in_dependencias
SELECT 'IN_BANHEIRO_FORA_PREDIO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BANHEIRO_FORA_PREDIO = 1;

insert into escola_in_dependencias
SELECT 'IN_BANHEIRO_DENTRO_PREDIO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BANHEIRO_DENTRO_PREDIO = 1;

insert into escola_in_dependencias
SELECT 'IN_BANHEIRO_EI', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BANHEIRO_EI = 1;

insert into escola_in_dependencias
SELECT 'IN_BANHEIRO_PNE', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BANHEIRO_PNE = 1;

insert into escola_in_dependencias
SELECT 'IN_DEPENDENCIAS_PNE', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_DEPENDENCIAS_PNE = 1;

insert into escola_in_dependencias
SELECT 'IN_SECRETARIA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_SECRETARIA = 1;

insert into escola_in_dependencias
SELECT 'IN_BANHEIRA_CHUVEIRO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BANHEIRA_CHUVEIRO = 1;

insert into escola_in_dependencias
SELECT 'IN_REFEITORIO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_REFEITORIO = 1;

insert into escola_in_dependencias
SELECT 'IN_DESPENSA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_DESPENSA = 1;

insert into escola_in_dependencias
SELECT 'IN_ALMOXARIFADO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ALMOXARIFADO = 1;

insert into escola_in_dependencias
SELECT 'IN_AUDITORIO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_AUDITORIO = 1;

insert into escola_in_dependencias
SELECT 'IN_PATIO_COBERTO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_PATIO_COBERTO = 1;

insert into escola_in_dependencias
SELECT 'IN_PATIO_DESCOBERTO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_PATIO_DESCOBERTO = 1;

insert into escola_in_dependencias
SELECT 'IN_ALOJAM_ALUNO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ALOJAM_ALUNO = 1;

insert into escola_in_dependencias
SELECT 'IN_ALOJAM_PROFESSOR', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ALOJAM_PROFESSOR = 1;

insert into escola_in_dependencias
SELECT 'IN_AREA_VERDE', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_AREA_VERDE = 1;

insert into escola_in_dependencias
SELECT 'IN_LAVANDERIA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LAVANDERIA = 1;

insert into escola_in_dependencias
SELECT 'IN_DEPENDENCIA_OUTRAS', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_DEPENDENCIA_OUTRAS = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_TV', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_TV = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_VIDEOCASSETE', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_VIDEOCASSETE = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_DVD', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_DVD = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_PARABOLICA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_PARABOLICA = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_COPIADORA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_COPIADORA = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_RETROPROJETOR', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_RETROPROJETOR = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_IMPRESSORA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_IMPRESSORA = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_IMPRESSORA_MULT', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_IMPRESSORA_MULT = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_SOM', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_SOM = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_MULTIMIDIA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_MULTIMIDIA = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_FAX', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_FAX = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_FOTO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_FOTO = 1;

insert into escola_in_equipamentos
SELECT 'IN_COMPUTADOR', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_COMPUTADOR = 1;

insert into escola_in_agua
SELECT 'IN_AGUA_FILTRADA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_AGUA_FILTRADA = 1;

insert into escola_in_agua
SELECT 'IN_AGUA_REDE_PUBLICA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_AGUA_REDE_PUBLICA = 1;

insert into escola_in_agua
SELECT 'IN_AGUA_POCO_ARTESIANO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_AGUA_POCO_ARTESIANO = 1;

insert into escola_in_agua
SELECT 'IN_AGUA_CACIMBA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_AGUA_CACIMBA = 1;

insert into escola_in_agua
SELECT 'IN_AGUA_FONTE_RIO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_AGUA_FONTE_RIO = 1;

insert into escola_in_agua
SELECT 'IN_AGUA_INEXISTENTE', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_AGUA_INEXISTENTE = 1;

insert into escola_in_esgoto
SELECT 'IN_ESGOTO_REDE_PUBLICA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ESGOTO_REDE_PUBLICA = 1;

insert into escola_in_esgoto
SELECT 'IN_ESGOTO_FOSSA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ESGOTO_FOSSA = 1;

insert into escola_in_esgoto
SELECT 'IN_ESGOTO_INEXISTENTE', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ESGOTO_INEXISTENTE = 1;

insert into escola_in_energia
SELECT 'IN_ENERGIA_REDE_PUBLICA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ENERGIA_REDE_PUBLICA = 1;

insert into escola_in_energia
SELECT 'IN_ENERGIA_GERADOR', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ENERGIA_GERADOR = 1;

insert into escola_in_energia
SELECT 'IN_ENERGIA_OUTROS', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ENERGIA_OUTROS = 1;

insert into escola_in_energia
SELECT 'IN_ENERGIA_INEXISTENTE', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ENERGIA_INEXISTENTE = 1;

insert into escola_in_lixo
SELECT 'IN_LIXO_COLETA_PERIODICA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LIXO_COLETA_PERIODICA = 1;

insert into escola_in_lixo
SELECT 'IN_LIXO_QUEIMA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LIXO_QUEIMA = 1;

insert into escola_in_lixo
SELECT 'IN_LIXO_JOGA_OUTRA_AREA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LIXO_JOGA_OUTRA_AREA = 1;

insert into escola_in_lixo
SELECT 'IN_LIXO_RECICLA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LIXO_RECICLA = 1;

insert into escola_in_lixo
SELECT 'IN_LIXO_ENTERRA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LIXO_ENTERRA = 1;

insert into escola_in_lixo
SELECT 'IN_LIXO_OUTROS', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_LIXO_OUTROS = 1;

insert into escola_in_internet
SELECT 'IN_INTERNET', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_INTERNET = 1;

insert into escola_in_internet
SELECT 'IN_BANDA_LARGA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BANDA_LARGA = 1;

insert into escola_in_alimentacao
SELECT 'IN_ALIMENTACAO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_ALIMENTACAO = 1;

insert into escola_in_fundamental_ciclos
SELECT 'IN_FUNDAMENTAL_CICLOS', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_FUNDAMENTAL_CICLOS = 1;

insert into escola_in_material
SELECT 'IN_MATERIAL_ESP_QUILOMBOLA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_MATERIAL_ESP_QUILOMBOLA = 1;

insert into escola_in_material
SELECT 'IN_MATERIAL_ESP_INDIGENA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_MATERIAL_ESP_INDIGENA = 1;

insert into escola_in_material
SELECT 'IN_MATERIAL_ESP_NAO_UTILIZA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_MATERIAL_ESP_NAO_UTILIZA = 1;

insert into escola_in_educacao_indigena
SELECT 'IN_EDUCACAO_INDIGENA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EDUCACAO_INDIGENA = 1;

insert into escola_in_brasil_alfabetizado
SELECT 'IN_BRASIL_ALFABETIZADO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BRASIL_ALFABETIZADO = 1;

insert into escola_in_final_semana
SELECT 'IN_FINAL_SEMANA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_FINAL_SEMANA = 1;

insert into escola_in_formacao_alternancia
SELECT 'IN_FORMACAO_ALTERNANCIA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_FORMACAO_ALTERNANCIA = 1;


