-- -- Carrega todos os dados

-- DROP TABLE IF EXISTS escola_original;
-- create table escola_original (
-- 	nu_ano_censo INT,
-- 	co_entidade VARCHAR(8),
-- 	no_entidade VARCHAR(100),
-- 	co_orgao_regional VARCHAR(5),
-- 	tp_situacao_funcionamento INT,
-- 	dt_ano_letivo_inicio VARCHAR(20), 
-- 	dt_ano_letivo_termino VARCHAR(20),
-- 	co_regiao INT,
-- 	co_mesorregiao INT,
-- 	co_microregiao int,
-- 	co_uf int,
-- 	co_municipio VARCHAR(7),
-- 	co_distrito VARCHAR(9),
-- 	tp_dependencia INT,
-- 	tp_localizacao INT,
-- 	tp_categoria_escola_privada INT,
-- 	in_conveniada_pp INT,
-- 	tp_convenio_poder_publico INT,
-- 	in_mat_escola_privada_emp INT,
-- 	in_mat_escola_privada_ong INT,
-- 	in_mat_escola_privada_sind INT,
-- 	in_mat_escola_privada_sist_s INT,
-- 	in_mat_escola_privada_s_fins INT,
-- 	co_escola_sede_vinculada VARCHAR(8),
-- 	co_ies_ofertante VARCHAR(14),
-- 	tp_regulamentacao INT,
-- 	in_local_func_predio_escolar INT,
-- 	tp_ocupacao_predio_escolar INT,
-- 	in_local_func_salas_empresa INT,
-- 	in_local_func_socioeducativo INT,
-- 	in_local_func_unid_prisional INT,
-- 	in_local_func_prisional_socio INT,
-- 	in_local_func_templo_igreja INT,
-- 	in_local_func_casa_professor INT,
-- 	in_local_func_galpao INT,
-- 	tp_ocupacao_galpao INT,
-- 	in_local_fun_salas_outra_esc INT,
-- 	in_local_fun_salas_outros INT,
-- 	in_predio_compartilhado INT,
-- 	in_agua_filtrada INT,
-- 	in_agua_rede_publica INT,
-- 	in_agua_poco_artesiano INT,
-- 	in_agua_cacimba INT,
-- 	in_agua_fonte_rio INT,
-- 	in_agua_inexistente INT,
-- 	in_energia_rede_publica INT,
-- 	in_energia_gerador INT,
-- 	in_energia_outros INT,
-- 	in_energia_inexistente INT,
-- 	in_esgoto_rede_publica INT,
-- 	in_esgoto_fossa INT,
-- 	in_esgoto_inexistente INT,
-- 	in_lixo_coleta_periodica INT,
-- 	in_lixo_queima INT,
-- 	in_lixo_joga_outra_area INT,
-- 	in_lixo_recicla INT,
-- 	in_lixo_enterra INT,
-- 	in_lixo_outros INT,
-- 	in_sala_diretoria INT,
-- 	in_sala_professor INT,
-- 	in_laboratorio_informatica INT,
-- 	in_laboratorio_ciencias INT,
-- 	in_sala_atendimento_especial INT,
-- 	in_quadra_esporte_coberta INT,
-- 	in_quadra_esporte_descoberta INT,
-- 	in_quadra_esportes INT,
-- 	in_cozinha INT,
-- 	in_biblioteca INT,
-- 	in_sala_leitura INT,
-- 	in_biblioteca_sala_leitura INT,
-- 	in_parque_infantil INT,
-- 	in_bercario INT,
-- 	in_banheiro_fora_predio INT,
-- 	in_banheiro_dentro_predio INT,
-- 	in_banheiro_ei INT,
-- 	in_banheiro_pne INT,
-- 	in_dependencias_pne INT,
-- 	in_secretaria INT,
-- 	in_banheira_chuveiro INT,
-- 	in_refeitorio INT,
-- 	in_despensa INT,
-- 	in_almoxarifado INT,
-- 	in_auditorio INT,
-- 	in_patio_coberto INT,
-- 	in_patio_descoberto INT,
-- 	in_alojam_aluno INT,
-- 	in_alojam_professor INT,
-- 	in_area_verde INT,
-- 	in_lavanderia INT,
-- 	in_dependencia_outras INT,
-- 	qt_salas_existentes INT,
-- 	qt_salas_utilizadas INT,
-- 	in_equip_tv INT,
-- 	in_equip_videocassete INT,
-- 	in_equip_dvd INT,
-- 	in_equip_parabolica INT,
-- 	in_equip_copiadora INT,
-- 	in_equip_retroprojetor INT,
-- 	in_equip_impressora INT,
-- 	in_equip_impressora_mult INT,
-- 	in_equip_som INT,
-- 	in_equip_multimidia INT,
-- 	in_equip_fax INT,
-- 	in_equip_foto INT,
-- 	in_computador INT,
-- 	qt_equip_tv INT,
-- 	qt_equip_videocassete INT,
-- 	qt_equip_dvd INT,
-- 	qt_equip_parabolica INT,
-- 	qt_equip_copiadora INT,
-- 	qt_equip_retroprojetor INT,
-- 	qt_equip_impressora INT,
-- 	qt_equip_impressora_mult INT,
-- 	qt_equip_som INT,
-- 	qt_equip_multimidia INT,
-- 	qt_equip_fax INT,
-- 	qt_equip_foto INT,
-- 	qt_computador INT,
-- 	qt_com_administrativo INT,
-- 	qt_comp_aluno INT,
-- 	in_internet INT,
-- 	in_banda_larga INT,
-- 	qt_funcionarios int,
-- 	in_alimentacao int,
-- 	tp_aee INT,
-- 	tp_atividade_complementar INT,
-- 	in_fundamental_ciclos INT,
-- 	tp_localizacao_diferenciada INT,
-- 	in_material_esp_quilombola int,
-- 	in_material_esp_indigena int,
-- 	in_material_esp_nao_utiliza int,
-- 	in_educacao_indigena int, 
-- 	tp_indigena_lingua int,
-- 	co_lingua_indigena int,
-- 	in_brasil_alfabetizado int,
-- 	in_final_semana int,
-- 	in_formacao_alternancia int,
-- 	in_mediacao_presencial int,
-- 	in_mediacao_semipresencial int,
-- 	in_mediacao_ead int,
-- 	in_especil_exclusiva int,
-- 	in_regular int,
-- 	in_eja int,
-- 	in_profissionalizante int,
-- 	in_comum_creche int,
-- 	in_comum_pre int,
-- 	in_comum_fund_ai int,
-- 	in_comum_fund_af int,
-- 	in_comum_medio_medio int,
-- 	in_comum_medio_integrado int,
-- 	in_comum_medio_normal int,
-- 	in_esp_exclusiva_creche int,
-- 	in_esp_exclusiva_pre int,
-- 	in_esp_exclusiva_fund_ai int,
-- 	in_esp_exclusiva_fund_af int,
-- 	in_esp_exclusiva_medio_medio int,
-- 	n_esp_exclusiva_medio_integrado int,
-- 	n_esp_exclusiva_medio_normal int,
-- 	in_comum_eja_fund int,
-- 	in_comum_eja_meio int,
-- 	in_comum_eja_prof int,
-- 	in_esp_exclusiva_eja_fund int,
-- 	in_esp_exclusiva_eja_medio int,
-- 	in_esp_exclusiva_eja_prof int,
-- 	in_esp_comum_prof int,
-- 	in_esp_exclusiva_prof int,

-- 	primary key(co_entidade,co_regiao,co_mesorregiao,co_microregiao,co_uf,co_municipio,co_distrito)
-- );
-- COPY escola_original
-- FROM '/home/igornfaustino/Documents/code/faculdade/optativas/lab_bd/microdados_ed_basica_2018/DADOS/ESCOLAS.CSV' DELIMITER '|' CSV HEADER NULL AS ''  encoding 'latin1';

-- DROP TABLE IF EXISTS turma_original;
-- CREATE TABLE turma_original (

--     nu_ano_censo INT,
--     id_turma INT,
--     no_turma VARCHAR(100),
--     tx_hr_inicial INT,
--     tx_mi_inicial INT,
--     nu_duracao_turma INT,
--     qt_matriculas INT,
--     tp_mediacao_didatico_pedago INT,
--     in_especial_exclusiva INT,
--     in_regular INT,
--     in_eja INT,
--     in_profissionalizante INT,
--     tp_etapa_ensino INT,
--     co_curso_educ_profissional INT,
--     tp_tipo_turma INT,
--     in_mais_educacao INT,
--     nu_dias_atividade INT,
--     in_dia_semana_domingo INT,
--     in_dia_semana_segunda INT,
--     in_dia_semana_terca INT,
--     in_dia_semana_quarta INT,
--     in_dia_semana_quinta INT,
--     in_dia_semana_sexta INT,
--     in_dia_semana_sabado INT,
--     co_tipo_atividade_1 INT,
--     co_tipo_atividade_2 INT,
--     co_tipo_atividade_3 INT,
--     co_tipo_atividade_4 INT,
--     co_tipo_atividade_5 INT,
--     co_tipo_atividade_6 INT,
--     in_braille INT,
--     in_recursos_baixa_visao INT,
--     in_processos_mentais INT,
--     in_orientacao_mobilidade INT,
--     in_sinais INT,
--     in_comunicacao_alt_aument INT,
--     in_enriq_curricular INT,
--     in_soroban INT,
--     in_informatica_acessivel INT,
--     in_port_escrita INT,
--     in_autonomia_escolar INT,
--     in_disc_quimica INT,
--     in_disc_fisica INT,
--     in_disc_matematica INT,
--     in_disc_biologia INT,
--     in_disc_ciencias INT,
--     in_disc_lingua_portuguesa INT,
--     in_disc_lingua_ingles INT,
--     in_disc_lingua_espanhol INT,
--     in_disc_lingua_frances INT,
--     in_disc_lingua_outra INT,
--     in_disc_lingua_indigena INT,
--     in_disc_artes INT,
--     in_disc_educacao_fisica INT,
--     in_disc_historia INT,
--     in_disc_geografia INT,
--     in_disc_filosofia INT,
--     in_disc_ensino_religioso INT,
--     in_disc_estudos_sociais INT,
--     in_disc_sociologia INT,
--     in_disc_est_sociais_sociologia INT,
--     in_disc_informatica_computacao INT,
--     in_disc_profissionalizante INT,
--     in_disc_atendimento_especiais INT,
--     in_disc_diver_socio_cultural INT,
--     in_disc_libras INT,
--     in_disc_pedagogicas INT,
--     in_disc_outras INT,
--     co_entidade INT,
--     co_regiao INT,
--     co_mesorregiao INT,
--     co_microrregiao INT,
--     co_uf INT,
--     co_municipio INT,
--     co_distrito INT,
--     tp_dependencia INT,
--     tp_localizacao INT,
--     tp_categoria_escola_privada INT,
--     in_conveniada_pp INT,
--     tp_convenio_poder_publico INT,
--     in_mant_escola_privada_emp INT,
--     in_mant_escola_privada_ong INT,
--     in_mant_escola_privada_sind INT,
--     in_mant_escola_privada_sist_s INT,
--     in_mant_escola_privada_s_fins INT,
--     tp_regulamentacao INT,
--     tp_localizacao_diferenciada INT,
--     in_educacao_indigena INT,


--     primary key(nu_ano_censo, id_turma)
    
-- );

-- COPY turma_original
-- FROM '/home/igornfaustino/Documents/code/faculdade/optativas/lab_bd/microdados_ed_basica_2018/DADOS/TURMAS.CSV' DELIMITER '|' CSV HEADER NULL AS ''  encoding 'latin1';

-- DROP TABLE IF EXISTS matricula_original CASCADE;
-- CREATE TABLE matricula_original(
-- 	NU_ANO_CENSO varchar(4),
-- 	ID_ALUNO varchar(32),
-- 	ID_MATRICULA varchar(10)  primary key,
-- 	NU_DIA SMALLINT,
-- 	NU_MES SMALLINT,
-- 	NU_ANO INT,
-- 	NU_IDADE_REFERENCIA SMALLINT,
-- 	NU_IDADE SMALLINT,
-- 	NU_DURACAO_TURMA  INT,
-- 	NU_DUR_ATIV_COMP_MESMA_REDE INT,
-- 	NU_DUR_ATIV_COMP_OUTRAS_REDES INT,
-- 	NU_DUR_AEE_MESMA_REDE INT,
-- 	NU_DUR_AEE_OUTRAS_REDES INT,
-- 	NU_DIAS_ATIVIDADE SMALLINT,
-- 	TP_SEXO SMALLINT,
-- 	TP_COR_RACA SMALLINT,
-- 	TP_NACIONALIDADE SMALLINT,
-- 	CO_PAIS_ORIGEM  SMALLINT,
-- 	CO_UF_NASC  SMALLINT,
-- 	CO_MUNICIPIO_NASC  INT,
-- 	CO_UF_END  SMALLINT,
-- 	CO_MUNICIPIO_END  INT,
-- 	TP_ZONA_RESIDENCIAL SMALLINT,
-- 	TP_OUTRO_LOCAL_AULA SMALLINT,
-- 	IN_TRANSPORTE_PUBLICO SMALLINT,
-- 	TP_RESPONSAVEL_TRANSPORTE SMALLINT,
-- 	IN_TRANSP_VANS_KOMBI SMALLINT,
-- 	IN_TRANSP_MICRO_ONIBUS SMALLINT,
-- 	IN_TRANSP_ONIBUS SMALLINT,
-- 	IN_TRANSP_BICICLETA SMALLINT,
-- 	IN_TRANSP_TR_ANIMAL SMALLINT,
-- 	IN_TRANSP_OUTRO_VEICULO SMALLINT,
-- 	IN_TRANSP_EMBAR_ATE5 SMALLINT,
-- 	IN_TRANSP_EMBAR_5A15 SMALLINT,
-- 	IN_TRANSP_EMBAR_15A35 SMALLINT,
-- 	IN_TRANSP_EMBAR_35 SMALLINT,
-- 	IN_TRANSP_TREM_METRO SMALLINT,
-- 	IN_NECESSIDADE_ESPECIAL SMALLINT,
-- 	IN_CEGUEIRA SMALLINT,
-- 	IN_BAIXA_VISAO SMALLINT,
-- 	IN_SURDEZ SMALLINT,
-- 	IN_DEF_AUDITIVA SMALLINT,
-- 	IN_SURDOCEGUEIRA SMALLINT,
-- 	IN_DEF_FISICA SMALLINT,
-- 	IN_DEF_INTELECTUAL SMALLINT,
-- 	IN_DEF_MULTIPLA SMALLINT,
-- 	IN_AUTISMO SMALLINT,
-- 	IN_SINDROME_ASPERGER SMALLINT,
-- 	IN_SINDROME_RETT SMALLINT,
-- 	IN_TRANSTORNO_DI SMALLINT,
-- 	IN_SUPERDOTACAO SMALLINT,
-- 	IN_RECURSO_LEDOR SMALLINT,
-- 	IN_RECURSO_TRANSCRICAO SMALLINT,
-- 	IN_RECURSO_INTERPRETE SMALLINT,
-- 	IN_RECURSO_LIBRAS SMALLINT,
-- 	IN_RECURSO_LABIAL SMALLINT,
-- 	IN_RECURSO_BRAILLE SMALLINT,
-- 	IN_RECURSO_AMPLIADA_16 SMALLINT,
-- 	IN_RECURSO_AMPLIADA_20 SMALLINT,
-- 	IN_RECURSO_AMPLIADA_24 SMALLINT,
-- 	IN_RECURSO_NENHUM SMALLINT,
-- 	TP_INGRESSO_FEDERAIS SMALLINT,
-- 	TP_MEDIACAO_DIDATICO_PEDAGO SMALLINT,
-- 	IN_ESPECIAL_EXCLUSIVA SMALLINT,
-- 	IN_REGULAR SMALLINT,
-- 	IN_EJA SMALLINT,
-- 	IN_PROFISSIONALIZANTE SMALLINT,
-- 	TP_ETAPA_ENSINO INT,
-- 	ID_TURMA varchar(8),
-- 	CO_CURSO_EDUC_PROFISSIONAL varchar(5),
-- 	TP_UNIFICADA SMALLINT,
-- 	TP_TIPO_TURMA SMALLINT,
-- 	CO_ENTIDADE varchar(8),
-- 	CO_REGIAO SMALLINT,
-- 	CO_MESORREGIAO INT,
-- 	CO_MICRORREGIAO INT,
-- 	CO_UF INT,
-- 	CO_MUNICIPIO INT,
-- 	CO_DISTRITO INT,
-- 	TP_DEPENDENCIA SMALLINT,
-- 	TP_LOCALIZACAO SMALLINT,
-- 	TP_CATEGORIA_ESCOLA_PRIVADA SMALLINT,
-- 	IN_CONVENIADA_PP SMALLINT,
-- 	TP_CONVENIO_PODER_PUBLICO SMALLINT,
-- 	IN_MANT_ESCOLA_PRIVADA_EMP SMALLINT,
-- 	IN_MANT_ESCOLA_PRIVADA_ONG SMALLINT,
-- 	IN_MANT_ESCOLA_PRIVADA_SIND SMALLINT,
-- 	IN_MANT_ESCOLA_PRIVADA_SIST_S SMALLINT,
-- 	IN_MANT_ESCOLA_PRIVADA_S_FINS SMALLINT,
-- 	TP_REGULAMENTACAO SMALLINT,
-- 	TP_LOCALIZACAO_DIFERENCIADA SMALLINT,
-- 	IN_EDUCACAO_INDIGENA SMALLINT
-- );
-- COPY matricula_original
-- FROM '/home/igornfaustino/Documents/code/faculdade/optativas/lab_bd/microdados_ed_basica_2018/DADOS/MATRICULA_CO.CSV' DELIMITER '|' CSV HEADER NULL AS ''  encoding 'latin1';
-- COPY matricula_original
-- FROM '/home/igornfaustino/Documents/code/faculdade/optativas/lab_bd/microdados_ed_basica_2018/DADOS/MATRICULA_NORDESTE.CSV' DELIMITER '|' CSV HEADER NULL AS ''  encoding 'latin1';
-- COPY matricula_original
-- FROM '/home/igornfaustino/Documents/code/faculdade/optativas/lab_bd/microdados_ed_basica_2018/DADOS/MATRICULA_NORTE.CSV' DELIMITER '|' CSV HEADER NULL AS ''  encoding 'latin1';
-- COPY matricula_original
-- FROM '/home/igornfaustino/Documents/code/faculdade/optativas/lab_bd/microdados_ed_basica_2018/DADOS/MATRICULA_SUDESTE.CSV' DELIMITER '|' CSV HEADER NULL AS ''  encoding 'latin1';
-- COPY matricula_original
-- FROM '/home/igornfaustino/Documents/code/faculdade/optativas/lab_bd/microdados_ed_basica_2018/DADOS/MATRICULA_SUL.CSV' DELIMITER '|' CSV HEADER NULL AS ''  encoding 'latin1';

-- Criando TPs e INs


DROP TABLE if EXISTS tp_situacao_funcionamento cascade;
create table tp_situacao_funcionamento
(
    tp_situacao_funcionamento INTEGER primary key,
    tp_situacao_funcionamento_nome VARCHAR(150)
);

DROP TABLE if EXISTS tp_faltante cascade;
create table tp_faltante
(
    tp_faltante INTEGER PRIMARY KEY,
    tp_faltante_nome VARCHAR(150)
);

DROP TABLE if EXISTS tp_dependencia cascade;
create table tp_dependencia
(
    tp_dependencia INTEGER PRIMARY KEY,
    tp_dependencia_nome VARCHAR(150)
);


DROP TABLE if EXISTS tp_localizacao cascade;
create table tp_localizacao
(
    tp_localizacao INTEGER PRIMARY KEY,
    tp_localizacao_nome VARCHAR(150)

);

DROP TABLE if EXISTS tp_categoria_escola_privada cascade;
create table tp_categoria_escola_privada
(
    tp_categoria_escola_privada INTEGER PRIMARY KEY,
    tp_categoria_escola_privada_nome VARCHAR(150)
);

DROP TABLE if EXISTS in_conveniada_pp cascade;
create table in_conveniada_pp
(
    in_conveniada_pp VARCHAR(150) PRIMARY KEY

);

DROP TABLE if EXISTS tp_convenio_poder_publico cascade;
create table tp_convenio_poder_publico
(
    tp_convenio_poder_publico INTEGER PRIMARY KEY,
    tp_convenio_poder_publico_nome VARCHAR(150)
);

DROP TABLE if EXISTS in_mantenedor cascade;
CREATE TABLE in_mantenedor
(
    in_mantenedor VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS tp_regulamentacao CASCADE;
CREATE TABLE tp_regulamentacao
(
    tp_regulamentacao INTEGER PRIMARY KEY,
    tp_regulamentacao_nome VARCHAR(150)
);

DROP TABLE if EXISTS in_dependencias cascade;
CREATE table in_dependencias
(
    in_dependencias VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS in_equipamentos CASCADE;
CREATE table in_equipamentos
(
    in_equipamentos VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS in_agua CASCADE;
CREATE table in_agua
(
    in_agua VARCHAR(150) PRIMARY KEY not null
);

DROP TABLE if EXISTS in_esgoto CASCADE;
CREATE table in_esgoto
(
    in_esgoto VARCHAR(150) PRIMARY KEY not null

);

DROP TABLE if EXISTS in_energia CASCADE;
CREATE table in_energia
(
    in_energia VARCHAR(150) PRIMARY KEY not null
);

DROP TABLE if EXISTS in_lixo CASCADE;
CREATE table in_lixo
(
    in_lixo VARCHAR(150) PRIMARY KEY not null
);

DROP TABLE if EXISTS in_internet CASCADE;
CREATE table in_internet
(
    in_internet VARCHAR(150) PRIMARY KEY not null
);

DROP TABLE if EXISTS in_alimentacao CASCADE;
CREATE table in_alimentacao
(
    in_alimentacao VARCHAR(150) PRIMARY KEY not null
);

DROP TABLE if EXISTS tp_aee CASCADE;
CREATE TABLE tp_aee
(
    tp_aee INTEGER PRIMARY KEY,
    tp_aee_nome VARCHAR(150)
);

DROP TABLE if EXISTS tp_atividade_complementar CASCADE;
CREATE TABLE tp_atividade_complementar
(
    tp_atividade_complementar INTEGER PRIMARY KEY,
    tp_atividade_complementar_nome VARCHAR(150)
);

DROP TABLE if EXISTS tp_indigena_lingua CASCADE;
CREATE TABLE tp_indigena_lingua
(
    tp_indigena_lingua INTEGER PRIMARY KEY,
    tp_indigena_lingua_nome VARCHAR(150)
);

DROP TABLE if EXISTS tp_localizacao_diferenciada CASCADE;
CREATE TABLE tp_localizacao_diferenciada
(
    tp_localizacao_diferenciada INTEGER PRIMARY KEY,
    tp_localizacao_diferenciada_nome VARCHAR(150)
);

DROP TABLE if EXISTS tp_ocupacao_galpao CASCADE;
CREATE TABLE tp_ocupacao_galpao
(
    tp_ocupacao_galpao INTEGER PRIMARY KEY,
    tp_ocupacao_galpao_nome VARCHAR(150)
);

DROP TABLE if EXISTS tp_ocupacao_predio_escolar CASCADE;
CREATE TABLE tp_ocupacao_predio_escolar
(
    tp_ocupacao_predio_escolar INTEGER PRIMARY KEY,
    tp_ocupacao_predio_escolar_nome VARCHAR(150)
);

DROP TABLE if EXISTS in_local_funcionamento cascade;
CREATE table in_local_funcionamento
(
    in_local_funcionamento VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS in_fundamental_ciclos CASCADE;
CREATE table in_fundamental_ciclos
(
    in_fundamental_ciclos VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS in_material CASCADE;
CREATE table in_material
(
    in_material VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS in_educacao_indigena CASCADE;
CREATE table in_educacao_indigena
(
    in_educacao_indigena VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS in_brasil_alfabetizado CASCADE;
CREATE table in_brasil_alfabetizado
(
    in_brasil_alfabetizado VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS in_final_semana CASCADE;
CREATE table in_final_semana
(
    in_final_semana VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS in_formacao_alternancia CASCADE;
CREATE table in_formacao_alternancia
(
    in_formacao_alternancia VARCHAR(150) PRIMARY KEY
);

DROP TABLE if EXISTS oferta_matricula CASCADE;
CREATE TABLE oferta_matricula
(
    oferta_matricula VARCHAR(100) PRIMARY KEY
);

DROP TABLE IF EXISTS dias_semana CASCADE;
CREATE TABLE dias_semana(
    id_dia INT,
    dia CHAR(50),

    PRIMARY KEY (id_dia)
);

DROP TABLE IF EXISTS co_tipo_atividade CASCADE;
CREATE TABLE co_tipo_atividade(
    id_tipo INT,
    atividade INT,

    PRIMARY KEY (id_tipo)
);

DROP TABLE IF EXISTS tipo_inclusao CASCADE;
CREATE TABLE tipo_inclusao(
    id_inclusao INT,
    inclusao CHAR(100),


    PRIMARY KEY (id_inclusao)
);

DROP TABLE IF EXISTS PAIS CASCADE;
CREATE TABLE PAIS(
   CO_PAIS SMALLINT PRIMARY KEY,
   NO_PAIS VARCHAR(100)
);

DROP TABLE IF EXISTS SEXO CASCADE;
CREATE TABLE SEXO(
   co_sexo SMALLINT PRIMARY KEY,
   no_sexo VARCHAR(100)
);

DROP TABLE IF EXISTS COR_RACA CASCADE;
CREATE TABLE COR_RACA(
   co_cor_raca SMALLINT PRIMARY KEY,
   no_cor_raca VARCHAR(100)
);

DROP TABLE IF EXISTS NACIONALIDADE CASCADE;
CREATE TABLE NACIONALIDADE(
   co_nacionalidade SMALLINT PRIMARY KEY,
   no_nacionalidade VARCHAR(100)
);

DROP TABLE IF EXISTS ZONA_RESIDENCIAL CASCADE;
CREATE TABLE ZONA_RESIDENCIAL(
   co_zona_residencial SMALLINT PRIMARY KEY,
   no_zona_residencial VARCHAR(100)
);

DROP TABLE IF EXISTS LOCAL_AULA CASCADE;
CREATE TABLE LOCAL_AULA(
   co_local_aula SMALLINT PRIMARY KEY,
   no_local_aula VARCHAR(100)
);

DROP TABLE IF EXISTS RESPONSAVEL_TRANSPORTE CASCADE;
CREATE TABLE RESPONSAVEL_TRANSPORTE(
   co_responsavel_transporte SMALLINT PRIMARY KEY,
   no_responsavel_transporte VARCHAR(100)
);


DROP TABLE IF EXISTS INGRESSOS_FEDERAIS CASCADE;
CREATE TABLE INGRESSOS_FEDERAIS(
   co_ingressos_federais SMALLINT PRIMARY KEY,
   no_ingressos_federais VARCHAR(200)
);

DROP TABLE IF EXISTS UNIFICADA CASCADE;
CREATE TABLE UNIFICADA(
   co_unificada SMALLINT PRIMARY KEY,
   no_unificada VARCHAR(100)
);

DROP TABLE IF EXISTS TIPO_TURMA CASCADE;
CREATE TABLE TIPO_TURMA(
   co_tipo_turma SMALLINT PRIMARY KEY,
   no_tipo_turma VARCHAR(100)
);

DROP TABLE IF EXISTS TRANSPORTE CASCADE;
CREATE TABLE TRANSPORTE(
   no_transporte VARCHAR(100) PRIMARY KEY
);

DROP TABLE IF EXISTS NECESSIDADE_ESPECIAL CASCADE;
CREATE TABLE NECESSIDADE_ESPECIAL(
   no_necessidade_especial VARCHAR(100) PRIMARY KEY
);

DROP TABLE IF EXISTS RECURSO CASCADE;
CREATE TABLE RECURSO(
   no_recurso VARCHAR(100) PRIMARY KEY
);

DROP TABLE IF EXISTS MEDIACAO_DIDATICO_PEDAGO CASCADE;
CREATE TABLE MEDIACAO_DIDATICO_PEDAGO(
   co_mediacao_didatico_pedago SMALLINT PRIMARY KEY,
   no_mediacao_didatico_pedago VARCHAR(100)
);

DROP TABLE IF EXISTS ETAPA_DE_ENSINO CASCADE;
CREATE TABLE ETAPA_DE_ENSINO(
    TP_ETAPA_ENSINO INT PRIMARY KEY,
    NOME_ETAPA VARCHAR(200)
);

INSERT INTO ETAPA_DE_ENSINO(TP_ETAPA_ENSINO, NOME_ETAPA) VALUES
(1, 'Educação Infantil - Creche'),
(2, 'Educação Infantil - Pré-escola'),
(4, 'Ensino Fundamental de 8 anos - 1ª Série'),
(5, 'Ensino Fundamental de 8 anos - 2ª Série'),
(6, 'Ensino Fundamental de 8 anos - 3ª Série'),
(7, 'Ensino Fundamental de 8 anos - 4ª Série'),
(8, 'Ensino Fundamental de 8 anos - 5ª Série'),
(9, 'Ensino Fundamental de 8 anos - 6ª Série'),
(10, 'Ensino Fundamental de 8 anos - 7ª Série'),
(11, 'Ensino Fundamental de 8 anos - 8ª Série'),
(14, 'Ensino Fundamental de 9 anos - 1º Ano'),
(15, 'Ensino Fundamental de 9 anos - 2º Ano'),
(16, 'Ensino Fundamental de 9 anos - 3º Ano'),
(17, 'Ensino Fundamental de 9 anos - 4º Ano'),
(18, 'Ensino Fundamental de 9 anos - 5º Ano'),
(19, 'Ensino Fundamental de 9 anos - 6º Ano'),
(20, 'Ensino Fundamental de 9 anos - 7º Ano'),
(21, 'Ensino Fundamental de 9 anos - 8º Ano'),
(41, 'Ensino Fundamental de 9 anos - 9º Ano'),
(25, 'Ensino Médio - 1ª Série'),
(26, 'Ensino Médio - 2ª Série'),
(27, 'Ensino Médio - 3ª Série'),
(28, 'Ensino Médio - 4ª Série'),
(29, 'Ensino Médio - Não Seriada'),
(30, 'Curso Técnico Integrado (Ensino Médio Integrado) 1ª Série'),
(31, 'Curso Técnico Integrado (Ensino Médio Integrado) 2ª Série'),
(32, 'Curso Técnico Integrado (Ensino Médio Integrado) 3ª Série'),
(33, 'Curso Técnico Integrado (Ensino Médio Integrado) 4ª Série'),
(34, 'Curso Técnico Integrado (Ensino Médio Integrado) Não Seriada'),
(35, 'Ensino Médio - Normal/Magistério 1ª Série'),
(36, 'Ensino Médio - Normal/Magistério 2ª Série'),
(37, 'Ensino Médio - Normal/Magistério 3ª Série'),
(38, 'Ensino Médio - Normal/Magistério 4ª Série'),
(39, 'Curso Técnico - Concomitante'),
(40, 'Curso Técnico - Subsequente'),
(68, 'Curso FIC Concomitante'),
(65, 'EJA - Ensino Fundamental - Projovem Urbano'),
(67, 'Curso FIC integrado na modalidade EJA  - Nível Médio'),
(69, 'EJA - Ensino Fundamental -  Anos iniciais'),
(70, 'EJA - Ensino Fundamental -  Anos finais'),
(71, 'EJA - Ensino Médio'),
(72, 'EJA - Ensino Fundamental  - Anos iniciais e Anos finais'),
(73, 'Curso FIC integrado na modalidade EJA - Nível Fundamental (EJA integrada à Educação Profissional de Nível Fundamental)'),
(74, 'Curso Técnico Integrado na Modalidade EJA (EJA integrada à Educação Profissional de Nível Médio)');

INSERT INTO RECURSO(no_recurso) VALUES
	('IN_RECURSO_LEDOR'),
	('IN_RECURSO_TRANSCRICAO'),
	('IN_RECURSO_INTERPRETE'),
	('IN_RECURSO_LIBRAS'),
	('IN_RECURSO_LABIAL'),
	('IN_RECURSO_BRAILLE'),
	('IN_RECURSO_AMPLIADA_16'),
	('IN_RECURSO_AMPLIADA_20'),
	('IN_RECURSO_AMPLIADA_24');

INSERT INTO NECESSIDADE_ESPECIAL(no_necessidade_especial) VALUES
	('IN_CEGUEIRA'),
	('IN_BAIXA_VISAO'),
	('IN_SURDEZ'),
	('IN_DEF_AUDITIVA'),
	('IN_SURDOCEGUEIRA'),
	('IN_DEF_FISICA'),
	('IN_DEF_INTELECTUAL'),
	('IN_DEF_MULTIPLA'),
	('IN_AUTISMO'),
	('IN_SINDROME_ASPERGER'),
	('IN_SINDROME_RETT'),
	('IN_TRANSTORNO_DI'),
	('IN_SUPERDOTACAO');

INSERT INTO TRANSPORTE(no_transporte) VALUES
('IN_TRANSP_VANS_KOMBI'),
('IN_TRANSP_MICRO_ONIBUS'),
('IN_TRANSP_ONIBUS'),
('IN_TRANSP_BICICLETA'),
('IN_TRANSP_TR_ANIMAL'),
('IN_TRANSP_OUTRO_VEICULO'),
('IN_TRANSP_EMBAR_ATE5'),
('IN_TRANSP_EMBAR_5A15'),
('IN_TRANSP_EMBAR_15A35'),
('IN_TRANSP_EMBAR_35'),
('IN_TRANSP_TREM_METRO');

INSERT INTO TIPO_TURMA(co_tipo_turma, no_tipo_turma) VALUES
(0, 'Não possui atendimento diferenciado'),
(1, 'Classe hospitalar'),
(2, 'Unidade de atendimento socioeducativo'),
(3, 'Unidade prisional'),
(4, 'Atividade complementar'),
(5, 'Atendimento Educacional Especializado (AEE)');

INSERT INTO UNIFICADA(co_unificada, no_unificada) VALUES
(0 ,'Não'),
(1 ,'Unificada'),
(2 ,'Multietapa'),
(3 ,'Multi'),
(4 ,'Correção de fluxo'),
(5 ,'Mista (Concomitante e Subsequente)');

INSERT INTO MEDIACAO_DIDATICO_PEDAGO(co_mediacao_didatico_pedago, no_mediacao_didatico_pedago) VALUES
	(1,  'Presencial'),
	(2,  'Semipresencial'),
	(3,  'EAD');

INSERT INTO INGRESSOS_FEDERAIS(co_ingressos_federais, no_ingressos_federais) VALUES
(1, 'Sem processo seletivo'),
(2, 'Sorteio'),
(3, 'Transferência'),
(4, 'Exame de seleção sem reserva de vaga'),
(5, 'Exame de seleção, vaga reservada para alunos da rede pública de ensino'),
(6, 'Exame de seleção, vaga reservada para alunos da rede pública de ensino, com baixa renda e autodeclarado preto, pardo ou indígena'),
(7, 'Exame de seleção, vaga reservada para outros programas de ação afirmativa'),
(8, 'Outra forma de ingresso'),
(9, 'Exame de seleção, vaga reservada para alunos da rede pública de ensino, com baixa renda');

INSERT INTO RESPONSAVEL_TRANSPORTE(co_responsavel_transporte, no_responsavel_transporte) VALUES
	(1,  'Estadual'),
	(2,  'Municipal');


INSERT INTO PAIS(co_pais, no_pais) VALUES(4, 'Afeganistão'), (8, 'Albânia'), (10, 'Antártida'), 
(12, 'Argélia'), (16, 'Samoa Americana'), (20, 'Andorra'), (24, 'Angola'), (28, 'Antígua e Barbuda'), 
(31, 'Azerbaijão'), (32, 'Argentina'), (36, 'Austrália'), (40, 'Áustria'), (44, 'Bahamas'), 
(48, 'Bahrein'), (50, 'Bangladesh'), (51, 'Armênia'), (52, 'Barbados'), (56, 'Bélgica'), 
(60, 'Bermudas'), (64, 'Butão'), (68, 'Bolívia'), (70, 'Bósnia e Herzegovina'), (72, 'Botswana'), 
(74, 'Ilha Bouvet'), (76, 'Brasil'), (84, 'Belize'), (86, 'Território Britânico do Oceano Índico'), 
(90, 'Ilhas Salomão'), (92, 'Ilhas Virgens Britânicas'), (96, 'Brunei'), (100, 'Bulgária'), 
(104, 'Myanmar'), (108, 'Burundi'), (112, 'Bielorrússia'), (116, 'Camboja'), (120, 'Camarões'), 
(124, 'Canadá'), (132, 'Cabo Verde'), (136, 'Ilhas Cayman'), (140, 'República Centro-Africana'), 
(144, 'Sri Lanka'), (148, 'Chade'), (152, 'Chile'), (156, 'China'), (158, 'República da China'), 
(162, 'Ilhas Natal'), (166, 'Ilhas Cocos (Keeling)'), (170, 'Colômbia'), (174, 'Comores'), (175, 'Mayotte'),
(178, 'República do Congo'), (180, 'República Democrática do Congo'), (184, 'Ilhas Cook'), 
(188, 'Costa Rica'), (191, 'Croácia'), (192, 'Cuba'), (196, 'Chipre'), (203, 'República Tcheca'), 
(204, 'Benim'), (208, 'Dinamarca'), (212, 'Dominica'), (214, 'República Dominicana'), (218, 'Equador'), 
(222, 'El Salvador'), (226, 'Guiné Equatorial'), (231, 'Etiópia'), (232, 'Eritreia'), (233, 'Estônia'), 
(234, 'Ilhas Feroe'), (238, 'Ilhas Malvinas'), (239, 'Ilhas Geórgia do Sul e Sandwich do Sul'), 
(242, 'Fiji'), (246, 'Finlândia'), (248, 'Ilhas Aland'), (250, 'França'), (254, 'Guiné Francesa'), 
(258, 'Polinésia Francesa'), (260, 'Terras Austrais e Antárticas Francesas'), (262, 'Djibouti'), 
(266, 'Gabão'), (268, 'Geórgia'), (270, 'Gâmbia'), (275, 'Palestina'), (276, 'Alemanha'), (288, 'Gana'), 
(292, 'Gibraltar'), (296, 'Kiribati'), (300, 'Grécia'), (304, 'Groenlândia'), (308, 'Granada'), 
(312, 'Guadalupe'), (316, 'Guam'), (320, 'Guatemala'), (324, 'Guiné'), (328, 'Guiana'), (332, 'Haiti'), 
(334, 'Ilha Heard e Ilhas McDonald'), (336, 'Vaticano'), (339, 'Apátrida'), (340, 'Honduras'), 
(344, 'Hong Kong'), (348, 'Hungria'), (352, 'Islândia'), (356, 'Índia'), (360, 'Indonésia'), (364, 'Irã'), 
(368, 'Iraque'), (372, 'Irlanda'), (376, 'Israel'), (380, 'Itália'), (384, 'Costa do Marfim'), 
(388, 'Jamaica'), (392, 'Japão'), (398, 'Cazaquistão'), (400, 'Jordânia'), (404, 'Quénia'), 
(408, 'Coreia do Norte'), (410, 'Coreia do Sul'), (414, 'Kuwait'), (417, 'República Quirguiz'), 
(418, 'Laos'), (422, 'Líbano'), (426, 'Lesoto'), (428, 'Letónia'), (430, 'Libéria'), (434, 'Líbia'), 
(438, 'Liechtenstein'), (440, 'Lituânia'), (442, 'Luxemburgo'), (446, 'Macau'), (450, 'Madagáscar'),
(454, 'Malawi'), (458, 'Malásia'), (462, 'Maldivas'), (466, 'Mali'), (470, 'Malta'), (474, 'Martinica'), 
(478, 'Mauritânia'), (480, 'Maurícia'), (484, 'México'), (492, 'Mônaco'), (496, 'Mongólia'), 
(498, 'Moldávia'), (499, 'Montenegro'), (500, 'Montserrat'), (504, 'Marrocos'), (508, 'Moçambique'), 
(512, 'Omã'), (516, 'Namíbia'), (520, 'Nauru'), (524, 'Nepal'), (528, 'Holanda'), 
(530, 'Antilhas Holandesas'), (531, 'Curaçao'), (533, 'Aruba'), (534, 'Sint Maarten (Parte Holandesa)'), 
(535, 'Bonaire, Saint Eustatius E Saba'), (540, 'Nova Caledónia'), (548, 'Vanuatu'), (554, 'Nova Zelândia'),
(558, 'Nicarágua'), (562, 'Níger'), (566, 'Nigéria'), (570, 'Niue'), (574, 'Ilha Norfolk'), 
(578, 'Noruega'), (580, 'Ilhas Marianas do Norte'), (581, 'Ilhas Menores Distantes dos Estados Unidos'), 
(583, 'Estados Federados da Micronésia'), (584, 'Ilhas Marshall'), (585, 'Palau'), (586, 'Paquistão'),
(591, 'Panamá'), (598, 'Papua-Nova Guiné'), (600, 'Paraguai'), (604, 'Peru'), (608, 'Filipinas'), 
(612, 'Ilhas Pitcairn'), (616, 'Polônia'), (620, 'Portugal'), (624, 'Guiné-Bissau'), (626, 'Timor-Leste'),
(630, 'Porto Rico'), (634, 'Catar'), (638, 'Réunion'), (642, 'Roménia'), (643, 'Rússia'), (646, 'Ruanda'), 
(652, 'São Bartolomeu'), (654, 'Santa Helena'), (659, 'São Cristóvão e Nevis'), (660, 'Anguilla'), 
(662, 'Santa Lúcia'), (663, 'Saint-Martin (Parte Francesa)'), (666, 'São Pedro e Miquelão'), 
(670, 'São Vicente e Granadinas'), (674, 'San Marino'), (678, 'São Tomé e Príncipe'), (680, 'Sark'), 
(682, 'Arábia Saudita'), (686, 'Senegal'), (688, 'Sérvia'), (690, 'Seicheles'), (694, 'Serra Leoa'), 
(702, 'Cingapura'), (703, 'Eslováquia'), (704, 'Vietnã'), (705, 'Eslovênia'), (706, 'Somália'), 
(710, 'África do Sul'), (716, 'Zimbábue'), (724, 'Espanha'), (728, 'Sudão Do Sul'), (729, 'Sudão'), 
(732, 'Saara Ocidental'), (740, 'Suriname'), (744, 'Svalbard and Jan Mayen'), (748, 'Suazilândia'), 
(752, 'Suécia'), (756, 'Suíça'), (760, 'Síria'), (762, 'Tajiquistão'), (764, 'Tailândia'), (768, 'Togo'),
(772, 'Tokelau'), (776, 'Tonga'), (780, 'Trinidad e Tobago'), (784, 'Emirados Árabes Unidos'),
(788, 'Tunísia'), (792, 'Turquia'), (795, 'Turcomenistão'), (796, 'Turks e Caicos'), (798, 'Tuvalu'),
(800, 'Uganda'), (804, 'Ucrânia'), (807, 'Macedônia'), (818, 'Egito'), (826, 'Reino Unido'), 
(830, 'Ilhas Do Canal'), (831, 'Guernsey'), (832, 'Jersey'), (833, 'Ilha de Man'), (834, 'Tanzânia'), 
(840, 'Estados Unidos'), (850, 'Ilhas Virgens Americanas'), (854, 'Burkina Faso'), (858, 'Uruguai'), 
(860, 'Uzbequistão'), (862, 'Venezuela'), (876, 'Wallis e Futuna'), (882, 'Samoa'), (887, 'Iémen'), 
(894, 'Zâmbia'), (999, 'Outra Nacionalidade');

INSERT INTO SEXO(co_sexo, no_sexo) VALUES(1, 'Masculino'), (2, 'Feminino');

INSERT INTO COR_RACA(co_cor_raca, no_cor_raca) VALUES (0,  'Não declarada'),
	(1,  'Branca'),
	(2,  'Preta'),
	(3,  'Parda'),
	(4,  'Amarela'),
	(5,  'Indígena');

INSERT INTO NACIONALIDADE(co_nacionalidade, no_nacionalidade) VALUES
	(1,  'Brasileira'),
	(2,  'Brasileira - nascido no exterior ou naturalizado'),
	(3,  'Estrangeira');

INSERT INTO ZONA_RESIDENCIAL(co_zona_residencial, no_zona_residencial) VALUES
	(1,  'Urbano'),
	(2,  'Rural');

INSERT INTO LOCAL_AULA(co_local_aula, no_local_aula) VALUES
	(1,  'Hospital'),
	(2,  'Domicilio'),
	(3,  'Não recebe');

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



-------------------------------------------------

INSERT INTO dias_semana (id_dia, dia) VALUES
(0, 'domingo'),
(1, 'segunda'),
(2, 'terça'),
(3, 'quarta'),
(4, 'quinta'),
(5, 'sexta'),
(6, 'sabado');

INSERT INTO tipo_inclusao (id_inclusao, inclusao) VALUES
(0, 'IN_BRAILLE'),
(1, 'IN_RECURSOS_BAIXA_VISAO'),
(2, 'IN_PROCESSOS_MENTAIS'),
(3, 'IN_ORIENTACAO_MOBILIDADE'),
(4, 'IN_SINAIS'),
(5, 'IN_COMUNICACAO_ALT_AUMENT'),
(6, 'IN_ENRIQ_CURRICULAR'),
(7, 'IN_SOROBAN'),
(8, 'IN_INFORMATICA_ACESSIVEL'),
(9, 'IN_PORT_ESCRITA'),
(10, 'IN_AUTONOMIA_ESCOLAR');

DROP TABLE IF EXISTS escola CASCADE;
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

DROP TABLE IF EXISTS escola_conveniada_pp CASCADE;
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

DROP TABLE IF EXISTS escola_in_local_funcionamento CASCADE;
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

DROP TABLE IF EXISTS escola_in_mantenedor CASCADE;
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

DROP TABLE IF EXISTS escola_in_dependencias CASCADE;
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

DROP TABLE IF EXISTS escola_in_equipamentos CASCADE;
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

DROP TABLE IF EXISTS escola_in_agua CASCADE;
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

DROP TABLE IF EXISTS escola_in_esgoto CASCADE;
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

DROP TABLE IF EXISTS escola_in_energia CASCADE;
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

DROP TABLE IF EXISTS escola_in_lixo CASCADE;
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

DROP TABLE IF EXISTS escola_in_internet CASCADE;
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

DROP TABLE IF EXISTS escola_oferta_matricula CASCADE;
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

DROP TABLE IF EXISTS escola_in_alimentacao CASCADE;
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

DROP TABLE IF EXISTS escola_in_fundamental_ciclos CASCADE;
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

DROP TABLE IF EXISTS escola_in_material CASCADE;
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

DROP TABLE IF EXISTS escola_in_educacao_indigena CASCADE;
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

DROP TABLE IF EXISTS escola_in_brasil_alfabetizado CASCADE;
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

DROP TABLE IF EXISTS escola_in_final_semana CASCADE;
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

DROP TABLE IF EXISTS escola_in_formacao_alternancia CASCADE;
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

DROP TABLE IF EXISTS turma CASCADE;
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
    FOREIGN KEY (id_ETAPA_DE_ENSINO) REFERENCES ETAPA_DE_ENSINO(TP_ETAPA_ENSINO),
    FOREIGN KEY (id_MEDIACAO_DIDATICO_PEDAGO) REFERENCES MEDIACAO_DIDATICO_PEDAGO(co_mediacao_didatico_pedago)
);

DROP TABLE IF EXISTS turma_tipo_inclusao CASCADE;
CREATE TABLE turma_tipo_inclusao(
    id_turma_tipo_inclusao SERIAL,
    id_turma INT,
    id_tipo_inclusao INT,

    PRIMARY KEY (id_turma_tipo_inclusao),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma),
    FOREIGN KEY (id_tipo_inclusao) REFERENCES tipo_inclusao(id_inclusao)
);

DROP TABLE IF EXISTS turma_co_tipo_atividade CASCADE;
CREATE TABLE turma_co_tipo_atividade(
    id_turma_tipo INT,
    id_co_tipo_atividade INT,
    id_turma INT,

    PRIMARY KEY (id_turma_tipo),
    FOREIGN KEY (id_co_tipo_atividade) REFERENCES co_tipo_atividade(id_tipo),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

DROP TABLE IF EXISTS dia_semana_turma CASCADE;
CREATE TABLE dia_semana_turma(
    id_dia_semana_turma INT,
    id_dia_semana INT,
    id_turma INT,

    PRIMARY KEY (id_dia_semana_turma),
    FOREIGN KEY (id_dia_semana) REFERENCES dias_semana(id_dia),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

DROP TABLE IF EXISTS turma_disciplina CASCADE;
CREATE TABLE turma_disciplina(
    id_turma_disciplina SERIAL,
    id_turma INT,
    id_disciplina INT,

    PRIMARY KEY(id_turma_disciplina),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
    -- FOREIGN KEY (id_tipo_materia) REFERENCES DISCIPLINA(ID_DISCIPLINA)

);

DROP TABLE IF EXISTS tipo_materia_etapa_ensino CASCADE;
CREATE TABLE tipo_materia_etapa_ensino(
    id SERIAL,
    id_tipo_materia INT,
    id_ETAPA_DE_ENSINO INT,


    -- FOREIGN KEY(id_tipo_materia) REFERENCES DISCIPLINA(ID_DISCIPLINA),
    FOREIGN KEY(id_ETAPA_DE_ENSINO) REFERENCES ETAPA_DE_ENSINO(TP_ETAPA_ENSINO)
);


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

DROP TABLE IF EXISTS MATRICULA CASCADE;
CREATE TABLE MATRICULA
(
    id_matricula varchar(15) primary key,
    co_entidade varchar(8),
    co_regiao INT,
    co_mesorregiao INT,
    co_microregiao int,
    co_uf int,
    co_municipio varchar(7),
    co_distrito varchar(9),
    tp_etapa_ensino INT REFERENCES ETAPA_DE_ENSINO(TP_ETAPA_ENSINO),
    FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) 
);
insert into MATRICULA
	SELECT ID_MATRICULA, CO_ENTIDADE, CO_REGIAO, CO_MESORREGIAO, CO_MICRORREGIAO, CO_UF, CO_MUNICIPIO, CO_DISTRITO, TP_ETAPA_ENSINO
	FROM matricula_original;

DROP TABLE IF EXISTS aluno CASCADE;
CREATE TABLE aluno
(
    ID_ALUNO varchar(32),
    id_matricula varchar(15) UNIQUE REFERENCES MATRICULA(id_matricula),
    nu_dia SMALLINT,
	nu_mes SMALLINT,
	nu_ano INT,
    nu_idade_referencia SMALLINT,
    nu_idade SMALLINT,
    tp_sexo SMALLINT REFERENCES SEXO(co_sexo),
    cor_raca SMALLINT REFERENCES COR_RACA(co_cor_raca),
    nacionalidade SMALLINT REFERENCES NACIONALIDADE(co_nacionalidade),
    co_pais_origen SMALLINT REFERENCES PAIS(co_pais),
    co_uf_nasc SMALLINT,
    co_municipio_nasc int,
    co_uf_end INT,
    co_municipio_end INT,
	tp_responsavel_transporte SMALLINT REFERENCES RESPONSAVEL_TRANSPORTE(co_responsavel_transporte),
    tp_zona_residencial SMALLINT REFERENCES ZONA_RESIDENCIAL(co_zona_residencial),
    tp_outro_local_aula SMALLINT REFERENCES LOCAL_AULA(co_local_aula),
    tp_ingresso_federais SMALLINT REFERENCES INGRESSOS_FEDERAIS(co_ingressos_federais),
    tp_mediacao_didatico_pedago SMALLINT REFERENCES MEDIACAO_DIDATICO_PEDAGO(co_mediacao_didatico_pedago),
    PRIMARY KEY (id_aluno, id_matricula)
);

insert into aluno
	SELECT ID_ALUNO, ID_MATRICULA, NU_DIA, NU_MES, NU_ANO, NU_IDADE_REFERENCIA, NU_IDADE, TP_SEXO, TP_COR_RACA, TP_NACIONALIDADE, CO_PAIS_ORIGEM, CO_UF_NASC, CO_MUNICIPIO_NASC, CO_UF_END, CO_MUNICIPIO_END, TP_RESPONSAVEL_TRANSPORTE, TP_ZONA_RESIDENCIAL, TP_OUTRO_LOCAL_AULA, TP_INGRESSO_FEDERAIS, TP_MEDIACAO_DIDATICO_PEDAGO
	FROM matricula_original;

DROP TABLE IF EXISTS NECESSIDADE_ALUNO CASCADE;
CREATE TABLE NECESSIDADE_ALUNO (
	ID_ALUNO varchar(32),
    id_matricula varchar(15),
	no_necessidade_especial VARCHAR(100) REFERENCES NECESSIDADE_ESPECIAL(no_necessidade_especial),
	PRIMARY KEY (id_aluno, id_matricula, no_necessidade_especial),
	FOREIGN key (id_aluno, id_matricula) REFERENCES aluno(id_aluno, id_matricula)
);

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_CEGUEIRA'
	FROM matricula_original
	where IN_CEGUEIRA = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_BAIXA_VISAO'
	FROM matricula_original
	where IN_BAIXA_VISAO = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_SURDEZ'
	FROM matricula_original
	where IN_SURDEZ = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_DEF_AUDITIVA'
	FROM matricula_original
	where IN_DEF_AUDITIVA = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_SURDOCEGUEIRA'
	FROM matricula_original
	where IN_SURDOCEGUEIRA = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_DEF_FISICA'
	FROM matricula_original
	where IN_DEF_FISICA = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_DEF_INTELECTUAL'
	FROM matricula_original
	where IN_DEF_INTELECTUAL = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_DEF_MULTIPLA'
	FROM matricula_original
	where IN_DEF_MULTIPLA = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_AUTISMO'
	FROM matricula_original
	where IN_AUTISMO = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_SINDROME_ASPERGER'
	FROM matricula_original
	where IN_SINDROME_ASPERGER = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_SINDROME_RETT'
	FROM matricula_original
	where IN_SINDROME_RETT = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSTORNO_DI'
	FROM matricula_original
	where IN_TRANSTORNO_DI = 1;

insert into NECESSIDADE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_SUPERDOTACAO'
	FROM matricula_original
	where IN_SUPERDOTACAO = 1;

DROP TABLE IF EXISTS RECURSO_ALUNO CASCADE;
CREATE TABLE RECURSO_ALUNO (
	ID_ALUNO varchar(32),
    id_matricula varchar(15),
	no_recurso VARCHAR(100) REFERENCES RECURSO(no_recurso),
	PRIMARY KEY (id_aluno, id_matricula, no_recurso),
	FOREIGN key (id_aluno, id_matricula) REFERENCES aluno(id_aluno, id_matricula)
);

insert into RECURSO_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_RECURSO_LEDOR'
	FROM matricula_original
	where IN_RECURSO_LEDOR = 1;

insert into RECURSO_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_RECURSO_TRANSCRICAO'
	FROM matricula_original
	where IN_RECURSO_TRANSCRICAO = 1;

insert into RECURSO_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_RECURSO_INTERPRETE'
	FROM matricula_original
	where IN_RECURSO_INTERPRETE = 1;

insert into RECURSO_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_RECURSO_LIBRAS'
	FROM matricula_original
	where IN_RECURSO_LIBRAS = 1;

insert into RECURSO_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_RECURSO_LABIAL'
	FROM matricula_original
	where IN_RECURSO_LABIAL = 1;

insert into RECURSO_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_RECURSO_BRAILLE'
	FROM matricula_original
	where IN_RECURSO_BRAILLE = 1;

insert into RECURSO_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_RECURSO_AMPLIADA_16'
	FROM matricula_original
	where IN_RECURSO_AMPLIADA_16 = 1;

insert into RECURSO_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_RECURSO_AMPLIADA_20'
	FROM matricula_original
	where IN_RECURSO_AMPLIADA_20 = 1;

insert into RECURSO_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_RECURSO_AMPLIADA_24'
	FROM matricula_original
	where IN_RECURSO_AMPLIADA_24 = 1;

DROP TABLE IF EXISTS TRANSPORTE_ALUNO CASCADE;
CREATE TABLE TRANSPORTE_ALUNO (
	ID_ALUNO varchar(32),
    id_matricula varchar(15),
	no_transporte VARCHAR(100) REFERENCES TRANSPORTE(no_transporte),
	PRIMARY KEY (id_aluno, id_matricula, no_transporte),
	FOREIGN key (id_aluno, id_matricula) REFERENCES aluno(id_aluno, id_matricula)
);

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_VANS_KOMBI'
	FROM matricula_original
	where IN_TRANSP_VANS_KOMBI = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_MICRO_ONIBUS'
	FROM matricula_original
	where IN_TRANSP_MICRO_ONIBUS = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_ONIBUS'
	FROM matricula_original
	where IN_TRANSP_ONIBUS = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_BICICLETA'
	FROM matricula_original
	where IN_TRANSP_BICICLETA = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_TR_ANIMAL'
	FROM matricula_original
	where IN_TRANSP_VANS_KOMBI = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_OUTRO_VEICULO'
	FROM matricula_original
	where IN_TRANSP_MICRO_ONIBUS = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_EMBAR_ATE5'
	FROM matricula_original
	where IN_TRANSP_ONIBUS = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_EMBAR_5A15'
	FROM matricula_original
	where IN_TRANSP_BICICLETA = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_EMBAR_15A35'
	FROM matricula_original
	where IN_TRANSP_MICRO_ONIBUS = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_EMBAR_35'
	FROM matricula_original
	where IN_TRANSP_ONIBUS = 1;

insert into TRANSPORTE_ALUNO
	SELECT ID_ALUNO, ID_MATRICULA, 'IN_TRANSP_TREM_METRO'
	FROM matricula_original
	where IN_TRANSP_BICICLETA = 1;