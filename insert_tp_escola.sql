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

INSERT INTO tp_categoria_escolar_privada (tp_categoria_escolar_privada, tp_categoria_escolar_privada_nome) VALUES
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

INSERT INTO tp_indigina_lingua (tp_indigina_lingua, tp_indigina_lingua_nome) VALUES
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
