DROP TABLE IF EXISTS PAIS CASCADE;
CREATE TABLE PAIS(
   CO_PAIS SMALLINT PRIMARY KEY,
   NO_PAIS VARCHAR(100)
);

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

DROP TABLE IF EXISTS SEXO CASCADE;
CREATE TABLE SEXO(
   co_sexo SMALLINT PRIMARY KEY,
   no_sexo VARCHAR(100)
);

INSERT INTO SEXO(co_sexo, no_sexo) VALUES(1, 'Masculino'), (2, 'Feminino');

DROP TABLE IF EXISTS COR_RACA CASCADE;
CREATE TABLE COR_RACA(
   co_cor_raca SMALLINT PRIMARY KEY,
   no_cor_raca VARCHAR(100)
);

INSERT INTO COR_RACA(co_cor_raca, no_cor_raca) VALUES (0,  'Não declarada'),
	(1,  'Branca'),
	(2,  'Preta'),
	(3,  'Parda'),
	(4,  'Amarela'),
	(5,  'Indígena');

DROP TABLE IF EXISTS NACIONALIDADE CASCADE;
CREATE TABLE NACIONALIDADE(
   co_nacionalidade SMALLINT PRIMARY KEY,
   no_nacionalidade VARCHAR(100)
);

INSERT INTO NACIONALIDADE(co_nacionalidade, no_nacionalidade) VALUES
	(1,  'Brasileira'),
	(2,  'Brasileira - nascido no exterior ou naturalizado'),
	(3,  'Estrangeira');

DROP TABLE IF EXISTS ZONA_RESIDENCIAL CASCADE;
CREATE TABLE ZONA_RESIDENCIAL(
   co_zona_residencial SMALLINT PRIMARY KEY,
   no_zona_residencial VARCHAR(100)
);

INSERT INTO ZONA_RESIDENCIAL(co_zona_residencial, no_zona_residencial) VALUES
	(1,  'Urbano'),
	(2,  'Rural');

DROP TABLE IF EXISTS LOCAL_AULA CASCADE;
CREATE TABLE LOCAL_AULA(
   co_local_aula SMALLINT PRIMARY KEY,
   no_local_aula VARCHAR(100)
);

INSERT INTO LOCAL_AULA(co_local_aula, no_local_aula) VALUES
	(1,  'Hospital'),
	(2,  'Domicilio'),
	(3,  'Não recebe');

DROP TABLE IF EXISTS RESPONSAVEL_TRANSPORTE CASCADE;
CREATE TABLE RESPONSAVEL_TRANSPORTE(
   co_responsavel_transporte SMALLINT PRIMARY KEY,
   no_responsavel_transporte VARCHAR(100)
);

INSERT INTO RESPONSAVEL_TRANSPORTE(co_responsavel_transporte, no_responsavel_transporte) VALUES
	(1,  'Estadual'),
	(2,  'Municipal');

DROP TABLE IF EXISTS INGRESSOS_FEDERAIS CASCADE;
CREATE TABLE INGRESSOS_FEDERAIS(
   co_ingressos_federais SMALLINT PRIMARY KEY,
   no_ingressos_federais VARCHAR(200)
);

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

DROP TABLE IF EXISTS MEDIACAO_DIDATICO_PEDAGOGO CASCADE;
CREATE TABLE MEDIACAO_DIDATICO_PEDAGOGO(
   co_mediacao_didatico_pedagogo SMALLINT PRIMARY KEY,
   no_mediacao_didatico_pedagogo VARCHAR(100)
);

INSERT INTO MEDIACAO_DIDATICO_PEDAGOGO(co_mediacao_didatico_pedagogo, no_mediacao_didatico_pedagogo) VALUES
	(1,  'Presencial'),
	(2,  'Semipresencial'),
	(3,  'EAD');

DROP TABLE IF EXISTS UNIFICADA CASCADE;
CREATE TABLE UNIFICADA(
   co_unificada SMALLINT PRIMARY KEY,
   no_unificada VARCHAR(100)
);

INSERT INTO UNIFICADA(co_unificada, no_unificada) VALUES
(0 ,'Não'),
(1 ,'Unificada'),
(2 ,'Multietapa'),
(3 ,'Multi'),
(4 ,'Correção de fluxo'),
(5 ,'Mista (Concomitante e Subsequente)');

DROP TABLE IF EXISTS TIPO_TURMA CASCADE;
CREATE TABLE TIPO_TURMA(
   co_tipo_turma SMALLINT PRIMARY KEY,
   no_tipo_turma VARCHAR(100)
);

INSERT INTO TIPO_TURMA(co_tipo_turma, no_tipo_turma) VALUES
(0, 'Não possui atendimento diferenciado'),
(1, 'Classe hospitalar'),
(2, 'Unidade de atendimento socioeducativo'),
(3, 'Unidade prisional'),
(4, 'Atividade complementar'),
(5, 'Atendimento Educacional Especializado (AEE)');

DROP TABLE IF EXISTS DEPENDENCIA CASCADE;
CREATE TABLE DEPENDENCIA(
   co_dependencia SMALLINT PRIMARY KEY,
   no_dependencia VARCHAR(100)
);

INSERT INTO DEPENDENCIA(co_dependencia, no_dependencia) VALUES
(1, 'Federal'),
(2, 'Estadual'),
(3, 'Municipal'),
(4, 'Privada');

DROP TABLE IF EXISTS LOCALIZACAO CASCADE;
CREATE TABLE LOCALIZACAO(
   co_localizacao SMALLINT PRIMARY KEY,
   no_localizacao VARCHAR(100)
);

INSERT INTO LOCALIZACAO(co_localizacao, no_localizacao) VALUES
(1, 'Urbana'),
(2, 'Rural');

DROP TABLE IF EXISTS CONVENIO_PODER_PUBLICO CASCADE;
CREATE TABLE CONVENIO_PODER_PUBLICO(
   co_convenio_poder_publico SMALLINT PRIMARY KEY,
   no_convenio_poder_publico VARCHAR(100)
);

INSERT INTO CONVENIO_PODER_PUBLICO(co_convenio_poder_publico, no_convenio_poder_publico) VALUES
(1, 'Municipal'),
(2, 'Estadual'),
(3, 'Estadual e Municipal'),
(4, 'Não aplicável para escolas públicas');

DROP TABLE IF EXISTS REGULAMENTACAO CASCADE;
CREATE TABLE regulamentacao(
   co_regulamentacao SMALLINT PRIMARY KEY,
   no_regulamentacao VARCHAR(100)
);

INSERT INTO REGULAMENTACAO(co_regulamentacao, no_regulamentacao) VALUES
(0, 'nao'),
(1, 'sim'),
(2, 'Em tramitao');

DROP TABLE IF EXISTS LOCALIZACAO_DIFERENCIADA CASCADE;
CREATE TABLE LOCALIZACAO_DIFERENCIADA(
   co_localizacao_diferenciada SMALLINT PRIMARY KEY,
   no_localizacao_diferenciada VARCHAR(100)
);

INSERT INTO LOCALIZACAO_DIFERENCIADA(co_localizacao_diferenciada, no_localizacao_diferenciada) VALUES
(0, 'A escola não está em localização diferenciada'),
(1, 'Área de assentamento'),
(2, 'Terra indígena'),
(3, 'Área remanescente de quilombos'),
(4, 'Unidade de uso sustentável'),
(5, 'Unidade de uso sustentável em terra indígena'),
(6, 'Unidade de uso sustentável em área remanescente de quilombos');

DROP TABLE IF EXISTS TRANSPORTE CASCADE;
CREATE TABLE TRANSPORTE(
   no_transporte VARCHAR(100) PRIMARY KEY
);

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

DROP TABLE IF EXISTS NECESSIDADE_ESPECIAL CASCADE;
CREATE TABLE NECESSIDADE_ESPECIAL(
   no_necessidade_especial VARCHAR(100) PRIMARY KEY
);

INSERT INTO NECESSIDADE_ESPECIAL(no_necessidade_especial) VALUES
	('IN_CEGUEIRA SMALLINT'),
	('IN_BAIXA_VISAO SMALLINT'),
	('IN_SURDEZ SMALLINT'),
	('IN_DEF_AUDITIVA SMALLINT'),
	('IN_SURDOCEGUEIRA SMALLINT'),
	('IN_DEF_FISICA SMALLINT'),
	('IN_DEF_INTELECTUAL SMALLINT'),
	('IN_DEF_MULTIPLA SMALLINT'),
	('IN_AUTISMO SMALLINT'),
	('IN_SINDROME_ASPERGER SMALLINT'),
	('IN_SINDROME_RETT SMALLINT'),
	('IN_TRANSTORNO_DI SMALLINT'),
	('IN_SUPERDOTACAO SMALLINT');

DROP TABLE IF EXISTS RECURSO CASCADE;
CREATE TABLE RECURSO(
   no_recurso VARCHAR(100) PRIMARY KEY
);

INSERT INTO RECURSO(no_recurso) VALUES
	('IN_RECURSO_LEDOR SMALLINT'),
	('IN_RECURSO_TRANSCRICAO SMALLINT'),
	('IN_RECURSO_INTERPRETE SMALLINT'),
	('IN_RECURSO_LIBRAS SMALLINT'),
	('IN_RECURSO_LABIAL SMALLINT'),
	('IN_RECURSO_BRAILLE SMALLINT'),
	('IN_RECURSO_AMPLIADA_16 SMALLINT'),
	('IN_RECURSO_AMPLIADA_20 SMALLINT'),
	('IN_RECURSO_AMPLIADA_24 SMALLINT'),
	('IN_RECURSO_NENHUM SMALLINT');

DROP TABLE IF EXISTS MANT_ESCOLA_PRIVADA CASCADE;
CREATE TABLE MANT_ESCOLA_PRIVADA(
   no_mant_escola_privada VARCHAR(100) PRIMARY KEY
);

INSERT INTO MANT_ESCOLA_PRIVADA(no_mant_escola_privada) VALUES
	('IN_MANT_ESCOLA_PRIVADA_EMP SMALLINT'),
	('IN_MANT_ESCOLA_PRIVADA_ONG SMALLINT'),
	('IN_MANT_ESCOLA_PRIVADA_SIND SMALLINT'),
	('IN_MANT_ESCOLA_PRIVADA_SIST_S SMALLINT'),
	('IN_MANT_ESCOLA_PRIVADA_S_FINS SMALLINT');


DROP TABLE IF EXISTS matricula_original CASCADE;
CREATE TABLE matricula_original(
	NU_ANO_CENSO varchar(4),
	ID_ALUNO varchar(32),
	ID_MATRICULA varchar(10)  primary key,
	NU_DIA SMALLINT,
	NU_MES SMALLINT,
	NU_ANO INT,
	NU_IDADE_REFERENCIA SMALLINT,
	NU_IDADE SMALLINT,
	NU_DURACAO_TURMA  INT,
	NU_DUR_ATIV_COMP_MESMA_REDE INT,
	NU_DUR_ATIV_COMP_OUTRAS_REDES INT,
	NU_DUR_AEE_MESMA_REDE INT,
	NU_DUR_AEE_OUTRAS_REDES INT,
	NU_DIAS_ATIVIDADE SMALLINT,
	TP_SEXO SMALLINT,
	TP_COR_RACA SMALLINT,
	TP_NACIONALIDADE SMALLINT,
	CO_PAIS_ORIGEM  SMALLINT,
	CO_UF_NASC  SMALLINT,
	CO_MUNICIPIO_NASC  INT,
	CO_UF_END  SMALLINT,
	CO_MUNICIPIO_END  INT,
	TP_ZONA_RESIDENCIAL SMALLINT,
	TP_OUTRO_LOCAL_AULA SMALLINT,
	IN_TRANSPORTE_PUBLICO SMALLINT,
	TP_RESPONSAVEL_TRANSPORTE SMALLINT,
	IN_TRANSP_VANS_KOMBI SMALLINT,
	IN_TRANSP_MICRO_ONIBUS SMALLINT,
	IN_TRANSP_ONIBUS SMALLINT,
	IN_TRANSP_BICICLETA SMALLINT,
	IN_TRANSP_TR_ANIMAL SMALLINT,
	IN_TRANSP_OUTRO_VEICULO SMALLINT,
	IN_TRANSP_EMBAR_ATE5 SMALLINT,
	IN_TRANSP_EMBAR_5A15 SMALLINT,
	IN_TRANSP_EMBAR_15A35 SMALLINT,
	IN_TRANSP_EMBAR_35 SMALLINT,
	IN_TRANSP_TREM_METRO SMALLINT,
	IN_NECESSIDADE_ESPECIAL SMALLINT,
	IN_CEGUEIRA SMALLINT,
	IN_BAIXA_VISAO SMALLINT,
	IN_SURDEZ SMALLINT,
	IN_DEF_AUDITIVA SMALLINT,
	IN_SURDOCEGUEIRA SMALLINT,
	IN_DEF_FISICA SMALLINT,
	IN_DEF_INTELECTUAL SMALLINT,
	IN_DEF_MULTIPLA SMALLINT,
	IN_AUTISMO SMALLINT,
	IN_SINDROME_ASPERGER SMALLINT,
	IN_SINDROME_RETT SMALLINT,
	IN_TRANSTORNO_DI SMALLINT,
	IN_SUPERDOTACAO SMALLINT,
	IN_RECURSO_LEDOR SMALLINT,
	IN_RECURSO_TRANSCRICAO SMALLINT,
	IN_RECURSO_INTERPRETE SMALLINT,
	IN_RECURSO_LIBRAS SMALLINT,
	IN_RECURSO_LABIAL SMALLINT,
	IN_RECURSO_BRAILLE SMALLINT,
	IN_RECURSO_AMPLIADA_16 SMALLINT,
	IN_RECURSO_AMPLIADA_20 SMALLINT,
	IN_RECURSO_AMPLIADA_24 SMALLINT,
	IN_RECURSO_NENHUM SMALLINT,
	TP_INGRESSO_FEDERAIS SMALLINT,
	TP_MEDIACAO_DIDATICO_PEDAGO SMALLINT,
	IN_ESPECIAL_EXCLUSIVA SMALLINT,
	IN_REGULAR SMALLINT,
	IN_EJA SMALLINT,
	IN_PROFISSIONALIZANTE SMALLINT,
	TP_ETAPA_ENSINO INT,
	ID_TURMA varchar(8),
	CO_CURSO_EDUC_PROFISSIONAL varchar(5),
	TP_UNIFICADA SMALLINT,
	TP_TIPO_TURMA SMALLINT,
	CO_ENTIDADE varchar(8),
	CO_REGIAO SMALLINT,
	CO_MESORREGIAO INT,
	CO_MICRORREGIAO INT,
	CO_UF INT,
	CO_MUNICIPIO INT,
	CO_DISTRITO INT,
	TP_DEPENDENCIA SMALLINT,
	TP_LOCALIZACAO SMALLINT,
	TP_CATEGORIA_ESCOLA_PRIVADA SMALLINT,
	IN_CONVENIADA_PP SMALLINT,
	TP_CONVENIO_PODER_PUBLICO SMALLINT,
	IN_MANT_ESCOLA_PRIVADA_EMP SMALLINT,
	IN_MANT_ESCOLA_PRIVADA_ONG SMALLINT,
	IN_MANT_ESCOLA_PRIVADA_SIND SMALLINT,
	IN_MANT_ESCOLA_PRIVADA_SIST_S SMALLINT,
	IN_MANT_ESCOLA_PRIVADA_S_FINS SMALLINT,
	TP_REGULAMENTACAO SMALLINT,
	TP_LOCALIZACAO_DIFERENCIADA SMALLINT,
	IN_EDUCACAO_INDIGENA SMALLINT
);
COPY matricula_original
FROM '/home/igornfaustino/Documents/code/faculdade/optativas/lab_bd/microdados_ed_basica_2018/DADOS/MATRICULA_CO.CSV' DELIMITER '|' CSV HEADER;

-- ##################################################################################################################################

DROP TABLE IF EXISTS MATRICULA CASCADE;
CREATE TABLE MATRICULA
(
    id_matricula varchar(15) primary key,
    co_entidade varchar(8),
    co_regiao SMALLINT,
    co_mesorregiao INT,
    co_microregiao INT,
    co_uf INT,
    co_municipio INT,
    co_distrito INT,
    tp_etapa_ensino INT
    -- PRIMARY KEY (id_matricula),
    -- FOREIGN KEY(co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) REFERENCES escola (co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito) 
);
insert into MATRICULA
	SELECT ID_MATRICULA, CO_ENTIDADE, CO_REGIAO, CO_MESORREGIAO, CO_MICRORREGIAO, CO_UF, CO_MUNICIPIO, CO_DISTRITO, TP_ETAPA_ENSINO
	FROM matricula_original;