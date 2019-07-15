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
SELECT 'IN_QUADRA_ESPORTES_COBERTA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_QUADRA_ESPORTES_COBERTA = 1;

insert into escola_in_dependencias
SELECT 'IN_QUADRA_ESPORTES_DESCOBERTA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_QUADRA_ESPORTES_DESCOBERTA = 1;

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
SELECT 'IN_BANHEIRO_CHUVEIRO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_BANHEIRO_CHUVEIRO = 1;

insert into escola_in_dependencias
SELECT 'IN_REFEITORIO', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_REFEITORIO = 1;

insert into escola_in_dependencias
SELECT 'IN_DESPANSA', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_DESPANSA = 1;

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
SELECT 'IN_DEPENDENCIAS_OUTRAS', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_DEPENDENCIAS_OUTRAS = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP_TV', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP_TV = 1;

insert into escola_in_equipamentos
SELECT 'IN_EQUIP__VIDEOCASSETE', co_entidade, co_regiao, co_mesorregiao, co_microregiao, co_uf, co_municipio, co_distrito
FROM escola_original
where IN_EQUIP__VIDEOCASSETE = 1;

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


