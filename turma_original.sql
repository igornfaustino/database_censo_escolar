INSERT INTO dias_semana (id_dia, dia) VALUES
(0, 'domingo'),
(1, 'segunda'),
(2, 'terça'),
(3, 'quarta'),
(4, 'quinta'),
(5, 'sexta'),
(6, 'sabado');

INSERT INTO tipo_inclusao (id_tipo, inclusao) VALUES
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


DROP TABLE IF EXISTS turma_original;
CREATE TABLE turma_original (

    nu_ano_censo INT,
    id_turma INT,
    no_turma VARCHAR(100),
    tx_hr_inicial INT,
    tx_mi_inicial INT,
    nu_duracao_turma INT,
    qt_matriculas INT,
    tp_mediacao_didatico_pedago INT,
    in_especial_exclusiva INT,
    in_regular INT,
    in_eja INT,
    in_profissionalizante INT,
    tp_etapa_ensino INT,
    co_curso_educ_profissional INT,
    tp_tipo_turma INT,
    in_mais_educacao INT,
    nu_dias_atividade INT,
    in_dia_semana_domingo INT,
    in_dia_semana_segunda INT,
    in_dia_semana_terca INT,
    in_dia_semana_quarta INT,
    in_dia_semana_quinta INT,
    in_dia_semana_sexta INT,
    in_dia_semana_sabado INT,
    co_tipo_atividade_1 INT,
    co_tipo_atividade_2 INT,
    co_tipo_atividade_3 INT,
    co_tipo_atividade_4 INT,
    co_tipo_atividade_5 INT,
    co_tipo_atividade_6 INT,
    in_braille INT,
    in_recursos_baixa_visao INT,
    in_processos_mentais INT,
    in_orientacao_mobilidade INT,
    in_sinais INT,
    in_comunicacao_alt_aument INT,
    in_enriq_curricular INT,
    in_soroban INT,
    in_informatica_acessivel INT,
    in_port_escrita INT,
    in_autonomia_escolar INT,
    in_disc_quimica INT,
    in_disc_fisica INT,
    in_disc_matematica INT,
    in_disc_biologia INT,
    in_disc_ciencias INT,
    in_disc_lingua_portuguesa INT,
    in_disc_lingua_ingles INT,
    in_disc_lingua_espanhol INT,
    in_disc_lingua_frances INT,
    in_disc_lingua_outra INT,
    in_disc_lingua_indigena INT,
    in_disc_artes INT,
    in_disc_educacao_fisica INT,
    in_disc_historia INT,
    in_disc_geografia INT,
    in_disc_filosofia INT,
    in_disc_ensino_religioso INT,
    in_disc_estudos_sociais INT,
    in_disc_sociologia INT,
    in_disc_est_sociais_sociologia INT,
    in_disc_informatica_computacao INT,
    in_disc_profissionalizante INT,
    in_disc_atendimento_especiais INT,
    in_disc_diver_socio_cultural INT,
    in_disc_libras INT,
    in_disc_pedagogicas INT,
    in_disc_outras INT,
    co_entidade INT,
    co_regiao INT,
    co_mesorregiao INT,
    co_microrregiao INT,
    co_uf INT,
    co_municipio INT,
    co_distrito INT,
    tp_dependencia INT,
    tp_localizacao INT,
    tp_categoria_escola_privada INT,
    in_conveniada_pp INT,
    tp_convenio_poder_publico INT,
    in_mant_escola_privada_emp INT,
    in_mant_escola_privada_ong INT,
    in_mant_escola_privada_sind INT,
    in_mant_escola_privada_sist_s INT,
    in_mant_escola_privada_s_fins INT,
    tp_regulamentacao INT,
    tp_localizacao_diferenciada INT,
    in_educacao_indigena INT,


    primary key(nu_ano_censo, id_turma)
    
);

COPY turma_original
FROM '/home/igornfaustino/Documents/code/faculdade/optativas/lab_bd/microdados_ed_basica_2018/DADOS/TURMAS.CSV' DELIMITER '|' CSV HEADER;

-- ------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO turma (
    id_turma,
    id_tp_tipo_turma,
    id_ETAPA_DE_ENSINO,
    id_MEDIACAO_DIDATICO_PEDAGO,
    no_turma, 
    in_mais_educacao, 
    hora_inicio,
    minuto_inicio, 
    nu_duracao_turma, 
    qt_matriculas, 
    in_especial_exclusiva, 
    in_regular, 
    in_eja, 
    in_profissionalizante, 
    nu_dias_atividade) 
VALUES (
    SELECT 
        id_turma,
        tp_tipo_turma,
        tp_etapa_ensino,
        tp_mediacao_didatico_pedago,
        no_turma,
        in_mais_educacao,
        tx_hr_inicial,
        tx_mi_inicial,
        nu_duracao_turma,
        qt_matriculas,
        in_especial_exclusiva,
        in_regular,
        in_eja,
        in_profissionalizante,
        nu_dias_atividade
    FROM turma_original
)

INSERT INTO turma_disciplina (id_turma, id_disciplina) 
VALUES (
    SELECT
        O.id_turma,
        (
            CASE WHEN O.in_disc_quimica = 1 THEN 1 
            WHEN O.in_disc_fisica =  1 THEN 2
            WHEN O.in_disc_matematica =  1 THEN 3
            WHEN O.in_disc_biologia =  1 THEN 4
            WHEN O.in_disc_ciencias =  1 THEN 5
            WHEN O.in_disc_lingua_portuguesa =  1 THEN 6 
            WHEN O.in_disc_lingua_ingles =  1 THEN 7
            WHEN O.in_disc_lingua_espanhol =  1 THEN 8 
            WHEN O.in_disc_lingua_frances =  1 THEN 9
            WHEN O.in_disc_lingua_outra =  1 THEN 10
            WHEN O.in_disc_lingua_indigena =  1 THEN 11 
            WHEN O.in_disc_artes =  1 THEN 12
            WHEN O.in_disc_educacao_fisica =  1 THEN 13
            WHEN O.in_disc_historia =  1 THEN 14
            WHEN O.in_disc_geografia =  1 THEN 15
            WHEN O.in_disc_filosofia =  1 THEN 16
            WHEN O.in_disc_ensino_religioso =  1 THEN 17
            WHEN O.in_disc_estudos_sociais =  1 THEN 18
            WHEN O.in_disc_sociologia =  1 THEN 19
            WHEN O.in_disc_est_sociais_sociologia =  1 THEN 20
            WHEN O.in_disc_informatica_computacao =  1 THEN 21
            WHEN O.in_disc_profissionalizante =  1 THEN 22
            WHEN O.in_disc_atendimento_especiais =  1 THEN 23 
            WHEN O.in_disc_diver_socio_cultural =  1 THEN 24
            WHEN O.in_disc_libras =  1 THEN 25
            WHEN O.in_disc_pedagogicas = 1 THEN 26
            WHEN O.in_disc_outras = 1 THEN 27

        END
        ) as id_disciplina
        FROM turma_original as O
);

INSERT INTO turma_tipo_inclusao (id_turma, id_tipo_inclusao) 
VALUES (
    SELECT 
        O.id_turma,
        (
            CASE WHEN O.in_braille = 1 THEN 0
                WHEN  O.in_recursos_baixa_visao = 1 THEN 1
                WHEN  O.in_processos_mentais = 1 THEN 2
                WHEN  O.in_orientacao_mobilidade = 1 THEN 3
                WHEN  O.in_sinais = 1 THEN 4
                WHEN  O.in_comunicacao_alt_aument = 1 THEN 5
                WHEN  O.in_enriq_curricular = 1 THEN 6
                WHEN  O.in_soroban = 1 THEN 7
                WHEN  O.in_informatica_acessivel = 1 THEN 8
                WHEN  O.in_port_escrita = 1 THEN 9
                WHEN  O.in_autonomia_escolar = 1 THEN 10
            END
        ) as id_tipo_inclusao
    FROM turma_original as O
);


INSERT INTO dia_semana_turma (id_turma, id_dia_semana)
VALUES (
    SELECT 
        O.id_turma,
        (
            CASE WHEN O.in_dia_semana_domingo = 1 THEN 0
                WHEN  O.in_dia_semana_segunda  = 1 THEN 1
                WHEN  O.in_dia_semana_terca = 1 THEN 2
                WHEN  O.in_dia_semana_quarta = 1 THEN 3
                WHEN  O.in_dia_semana_quinta = 1 THEN 4
                WHEN  O.in_dia_semana_sexta = 1 THEN 5
                WHEN  O.in_dia_semana_sabado = 1 THEN 6
            END
        )  as id_dia_semana
    FROM turma_original as O
);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(39,1),
(40,1),
(64,1),
(65,1),
(68,1),
(69,1),
(73,1);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,2),
(2,2),
(3,2),
(4,2),
(5,2),
(6,2),
(7,2),
(14,2),
(15,2),
(16,2),
(17,2),
(18,2),
(39,2),
(40,2),
(64,2),
(65,2),
(68,2),
(69,2),
(73,2);


INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,3),
(2,3),
(3,3),
(39,3),
(40,3),
(64,3),
(65,3),
(68,3);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,4),
(2,4),
(3,4),
(4,4),
(5,4),
(6,4),
(7,4),
(14,4),
(15,4),
(16,4),
(17,4),
(18,4),
(39,4),
(40,4),
(64,4),
(65,4),
(68,4),
(69,4),
(73,4);


INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,5),
(2,5),
(3,5),
(25,5),
(26,5),
(27,5),
(28,5),
(29,5),
(30,5),
(31,5),
(32,5),
(33,5),
(34,5),
(39,5),
(40,5),
(64,5),
(65,5),
(67,5),
(68,5),
(71,5);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,6),
(2,6),
(3,6),
(39,6),
(40,6),
(64,6),
(65,6),
(68,6);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,7),
(2,7),
(3,7),
(39,7),
(40,7),
(64,7),
(65,7),
(68,7);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,8),
(2,8),
(3,8),
(39,8),
(40,8),
(64,8),
(65,8),
(68,8);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,9),
(2,9),
(3,9),
(39,9),
(40,9),
(64,9),
(65,9),
(68,9);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,10),
(2,10),
(3,10),
(39,10),
(40,10),
(64,10),
(65,10),
(68,10);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,11),
(2,11),
(3,11),
(39,11),
(40,11),
(64,11),
(65,11),
(68,11);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,12),
(2,12),
(3,12),
(39,12),
(40,12),
(64,12),
(65,12),
(68,12);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,13),
(2,13),
(3,13),
(39,13),
(40,13),
(64,13),
(65,13),
(68,13);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,14),
(2,14),
(3,14),
(39,14),
(40,14),
(64,14),
(65,14),
(68,14);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,15),
(2,15),
(3,15),
(39,15),
(40,15),
(64,15),
(65,15),
(68,15);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,16),
(2,16),
(3,16),
(39,16),
(40,16),
(64,16),
(65,16),
(68,16);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,17),
(2,17),
(3,17),
(39,17),
(40,17),
(64,17),
(65,17),
(68,17);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,18)
(2,18)
(3,18)
(8,18)
(9,18)
(10,18),
(11,18),
(19,18),
(20,18),
(21,18),
(41,18),
(25,18),
(26,18),
(27,18),
(28,18),
(29,18),
(30,18),
(31,18),
(32,18),
(33,18),
(34,18),
(35,18),
(36,18),
(37,18),
(38,18),
(39,18),
(40,18),
(64,18),
(65,18),
(67,18),
(68,18),
(70,18),
(71,18);


INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,19),
(2,19),
(3,19),
(4,19),
(5,19),
(6,19),
(7,19),
(14,19),
(15,19),
(16,19),
(17,19),
(18,19),
(39,19),
(40,19),
(64,19),
(65,19),
(68,19),
(69,19),
(73,19);


INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,20),
(2,20),
(3,20),
(39,20),
(40,20),
(64,20),
(65,20),
(68,20);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,21),
(2,21),
(3,21),
(39,21),
(40,21),
(64,21),
(65,21),
(68,21);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(30,22),
(31,22),
(32,22),
(33,22),
(39,22),
(40,22),
(64,22),
(68,22);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES
(35,23),
(36,23),
(37,23),
(38,23);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES
(35,24),
(36,24),
(37,24),
(38,24);


INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,25),
(2,25),
(3,25),
(39,25),
(40,25),
(64,25),
(65,25),
(68,25);

INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES
(35,26),
(36,26),
(37,26),
(38,26);


INSERT INTO tipo_materia_etapa_ensino (id_ETAPA_DE_ENSINO, id_tipo_materia) VALUES 
(1,27),
(2,27),
(3,27),
(39,27),
(40,27),
(64,27),
(65,27),
(68,27);