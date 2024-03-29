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
