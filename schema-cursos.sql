PRAGMA foreign_keys = OFF;

DROP TABLE IF EXISTS modalidades;
DROP TABLE IF EXISTS cursos;
DROP TABLE IF EXISTS materias;

PRAGMA foreign_keys = ON;

CREATE TABLE modalidades
(
  "id" INTEGER NOT NULL,
  "modalidade" VARCHAR(255) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE cursos
(
  "id" INTEGER NOT NULL,
  "curso" VARCHAR(255) NOT NULL,
  "modalidade" VARCHAR(255) NOT NULL,
  PRIMARY KEY ("id"),
  FOREIGN KEY ("modalidade") REFERENCES modalidades ("id") ON DELETE CASCADE
);

CREATE TABLE materias
(
  "id" INTEGER NOT NULL,
  "materia" VARCHAR(255) NOT NULL,
  "modalidade" VARCHAR(255) NOT NULL,
  "curso" VARCHAR(255),
  PRIMARY KEY ("id"),
  FOREIGN KEY ("modalidade") REFERENCES modalidades ("id") ON DELETE CASCADE,
  FOREIGN KEY ("curso") REFERENCES cursos ("id") ON DELETE CASCADE
);

INSERT INTO modalidades ("id", "modalidade") VALUES
("1", "Integrado"),
("2", "Subsequente"),
("3", "Superior");

INSERT INTO cursos ("id", "modalidade", "curso") VALUES
("1", "1", "Automação Industrial"),
("2", "1", "Eletrotécnica"),
("3", "1", "Fabricação Mecânica"),
("4", "1", "Geoprocessamento"),
("5", "1", "Informática para Internet"),
("6", "1", "Refrigeração e Climatização"),
("7", "2", "Automação Industrial"),
("8", "2", "Eletrotécnica"),
("9", "2", "Fabricação Mecânica"),
("10", "2", "Geoprocessamento"),
("11", "2", "Refrigeração e Climatização"),
("12", "3", "Enfermagem"),
("13", "3", "Engenharia Mecânica"),
("14", "3", "Tecnologia em Análise e Desenvolvimento de Sistemas"),
("15", "3", "Tecnologia em Construção de Edifícios");

INSERT INTO materias ("modalidade", "curso", "materia") VALUES
("1", NULL, "Artes"),
("1", NULL, "Biologia I"),
("1", NULL, "Biologia II"),
("1", NULL, "Educação Física I"),
("1", NULL, "Educação Física II"),
("1", NULL, "Educação Física III"),
("1", NULL, "Filosofia I"),
("1", NULL, "Filosofia II"),
("1", NULL, "Filosofia III"),
("1", NULL, "Filosofia IV"),
("1", NULL, "Física I"),
("1", NULL, "Física II"),
("1", NULL, "Física III"),
("1", NULL, "Física IV"),
("1", NULL, "Geografia I"),
("1", NULL, "Geografia II"),
("1", NULL, "História I"),
("1", NULL, "História II"),
("1", NULL, "Língua Estrangeira - Espanhol"),
("1", NULL, "Língua Estrangeira - Inglês"),
("1", NULL, "Língua Portuguesa e Literatura Brasileira I"),
("1", NULL, "Língua Portuguesa e Literatura Brasileira II"),
("1", NULL, "Língua Portuguesa e Literatura Brasileira III"),
("1", NULL, "Língua Portuguesa e Literatura Brasileira IV"),
("1", NULL, "Matemática I"),
("1", NULL, "Matemática II"),
("1", NULL, "Matemática III"),
("1", NULL, "Matemática IV"),
("1", NULL, "Química I"),
("1", NULL, "Química II"),
("1", NULL, "Química III"),
("1", NULL, "Sociologia I"),
("1", NULL, "Sociologia II"),
("1", NULL, "Sociologia III"),
("1", NULL, "Sociologia IV"),
("1", NULL, "Estágio Supervisionado"),
("1", NULL, "Gestão Empresarial"),
("1", "1", "Comandos Elétricos"),
("1", "1", "Controle de Processos Industriais"),
("1", "1", "Eletrônica Básica"),
("1", "1", "Eletrônica Digital"),
("1", "1", "Eletrônica Industrial"),
("1", "1", "Fundamentos de Automação"),
("1", "1", "Informática Industrial"),
("1", "1", "Instrumentação Industrial"),
("1", "1", "Manutenção"),
("1", "1", "Máquinas e Instalações Elétricas"),
("1", "1", "Projeto Auxiliado por Computador"),
("1", "1", "Projeto de Automação"),
("1", "1", "Sistemas de Automação"),
("1", "1", "Sistemas hidráulicos e Pneumáticos"),
("1", "2", "Automação Industrial"),
("1", "2", "Corrente Alternada"),
("1", "2", "Dimensionamento I"),
("1", "2", "Dimensionamento II"),
("1", "2", "Eletrônica I"),
("1", "2", "Eletrônica II"),
("1", "2", "Fundamentos de Refrigeração"),
("1", "2", "Instalações Elétricas Industriais I"),
("1", "2", "Instalações Elétricas Industriais II"),
("1", "2", "Instalações Elétricas Prediais"),
("1", "2", "Máquinas Elétricas"),
("1", "2", "Projeto Auxiliado por Computador"),
("1", "2", "Projeto de Instalações Elétricas Prediais"),
("1", "2", "Redes Elétricas"),
("1", "3", "AUTOMAÇÃO e INSTRUMENTAÇÃO"),
("1", "3", "DESENHO AUXILIADO POR COMPUTADOR"),
("1", "3", "Desenho Técnico Mecânico"),
("1", "3", "ELEMENTOS DE MÁQUINAS"),
("1", "3", "FABRICAÇÃO MECÂNICA I"),
("1", "3", "FABRICAÇÃO MECÂNICA II"),
("1", "3", "MANUTENÇÃO MECÂNICA"),
("1", "3", "METROLOGIA"),
("1", "3", "RESISTÊNCIA DOS MATERIAIS"),
("1", "3", "TECNOLOGIA DA SOLDAGEM"),
("1", "3", "TECNOLOGIA MECÂNICA I"),
("1", "3", "TECNOLOGIA MECÂNICA II"),
("1", "4", "Banco de Dados"),
("1", "4", "Cartografia"),
("1", "4", "Fotogrametria"),
("1", "4", "Lógica de Programação"),
("1", "4", "Processamento Digital de Imagens"),
("1", "4", "Projeto Auxiliado por Computador"),
("1", "4", "Projeto em Geoprocessamento"),
("1", "4", "Sensoriamento Remoto"),
("1", "4", "Sistema de Informação Geográfica"),
("1", "4", "Topografia"),
("1", "5", "Banco de Dados"),
("1", "5", "Desenvolvimento Baseado em Objetos"),
("1", "5", "Desenvolvimento de Sistemas I"),
("1", "5", "Desenvolvimento de Sistemas II"),
("1", "5", "Engenharia de Software"),
("1", "5", "Lógica de Programação"),
("1", "5", "Introdução à Programação"),
("1", "5", "Fundamentos da Computação"),
("1", "6", "Eletricidade I"),
("1", "6", "Eletricidade II"),
("1", "6", "Fundamentos de Refrigeração"),
("1", "6", "Projeto Auxiliado por Computador"),
("1", "6", "Projeto em Refrigeração e Climatização"),
("1", "6", "Refrigeração Industrial"),
("1", "6", "Sistema de Refrigeração de Pequeno e Médio Porte"),
("1", "6", "Sistema de Refrigeração, Ar Condicionado e Ventilação"),
("2", "7", "Comandos Elétricos "),
("2", "7", "Controle de Processos Industriais"),
("2", "7", "Desenho Técnico"),
("2", "7", "Eletricidade"),
("2", "7", "Eletrônica Básica"),
("2", "7", "Eletrônica Digital"),
("2", "7", "Eletrônica Industrial"),
("2", "7", "Fenômenos de Transporte "),
("2", "7", "Fundamentos de Automação"),
("2", "7", "Informática"),
("2", "7", "Informática Industrial"),
("2", "7", "Instrumentação Industrial "),
("2", "7", "Manutenção"),
("2", "7", "Máquinas e Instalações Elétricas"),
("2", "7", "Projeto Auxiliado por Computador"),
("2", "7", "Projeto de Automação Industrial"),
("2", "7", "Segurança no Trabalho"),
("2", "7", "Sistemas Hidráulicos e Pneumáticos"),
("2", "7", "Sistemas de Automação"),
("2", "8", "Automação"),
("2", "8", "Corrente Alternada"),
("2", "8", "Desenho Técnico"),
("2", "8", "Dimensionamento I"),
("2", "8", "Dimensionamento II"),
("2", "8", "Eletricidade"),
("2", "8", "Eletrônica I"),
("2", "8", "Eletrônica II"),
("2", "8", "Informática"),
("2", "8", "Instalações Elétricas Industriais"),
("2", "8", "Instalações Elétricas Prediais"),
("2", "8", "Máquinas e Instalações Elétricas"),
("2", "8", "Projeto Auxiliado por Computador "),
("2", "8", "Projeto de Instalações Elétricas - Instalações Elétricas Prediais II"),
("2", "8", "Projeto de Instalações Elétricas - Projeto Auxiliado por Computador"),
("2", "8", "Projeto de Instalações Elétricas - Projeto Industrial"),
("2", "8", "Projeto de Instalações Elétricas - Projeto Predial"),
("2", "8", "Projeto de Instalações Elétricas - Projeto de Automação"),
("2", "8", "Projeto de Instalações Elétricas - Projeto de Redes"),
("2", "8", "Projeto de Instalações Elétricas - Projetos de Comandos"),
("2", "8", "Segurança do trabalho"),
("2", "9", "AUTOMAÇÃO"),
("2", "9", "DESENHO AUXILIADO POR COMPUTADOR"),
("2", "9", "Desenho Técnico Mecânico"),
("2", "9", "Desenho Técnico Mecânico II"),
("2", "9", "ELETROELETRÔNICA"),
("2", "9", "ENSAIOS MATERIAIS"),
("2", "9", "Elementos de Máquinas"),
("2", "9", "Eletrotécnica"),
("2", "9", "FABRICAÇÃO AUXILIADA POR COMPUTADOR"),
("2", "9", "FABRICAÇÃO MECÂNICA I"),
("2", "9", "FABRICAÇÃO MECÂNICA II"),
("2", "9", "FABRICAÇÃO MECÂNICA III"),
("2", "9", "FUNDAMENTOS DA USINAGEM"),
("2", "9", "INSTRUMENTAÇÃO INDUSTRIAL"),
("2", "9", "Informática Básica"),
("2", "9", "Manutenção Mecânica"),
("2", "9", "Mecânica Geral"),
("2", "9", "Metrologia"),
("2", "9", "Máquinas Térmicas e de Fluxo"),
("2", "9", "PROJETOS TCC"),
("2", "9", "Português Instrumental"),
("2", "9", "RELAÇÕES HUMANAS NO TRABALHO"),
("2", "9", "RESISTÊNCIA DOS MATERIAIS I"),
("2", "9", "RESISTÊNCIA DOS MATERIAIS II"),
("2", "9", "Segurança do Trabalho e Meio Ambiente"),
("2", "9", "Soldagem I"),
("2", "9", "TECNOLOGIA DA SOLDAGEM I"),
("2", "9", "TECNOLOGIA DA SOLDAGEM II"),
("2", "9", "TECNOLOGIA DA SOLDAGEM III"),
("2", "9", "Tecnologia Mecânica"),
("2", "9", "Tecnologia e Ciência dos Materiais"),
("2", "9", "Usinagem"),
("2", "10", "Banco de Dados"),
("2", "10", "Cadastro Técnico"),
("2", "10", "Cartografia Digital"),
("2", "10", "Cartografia e Geodésia"),
("2", "10", "Estatística"),
("2", "10", "Fotogrametria"),
("2", "10", "Introdução ao Geoprocessamento"),
("2", "10", "Lógica de Programação"),
("2", "10", "Metodologia de Pesquisa Científica"),
("2", "10", "Posicionamento por Satélite"),
("2", "10", "Processamento Digital de Imagens"),
("2", "10", "Projeto Auxiliado por Computador"),
("2", "10", "SIG LIVRE"),
("2", "10", "SISTEMAS DE INFORMAÇÕES GEOGRÁFICAS LIVRES"),
("2", "10", "Sensoriamento Remoto"),
("2", "10", "Sistemas de Informação Geográfica"),
("2", "10", "Topografia"),
("2", "10", "Trabalho de conclusão de Curso"),
("2", "10", "WEBSIG"),
("2", "11", "Ar Condicionado I"),
("2", "11", "Ar Condicionado II"),
("2", "11", "Desenho Técnico"),
("2", "11", "Eletricidade I"),
("2", "11", "Eletricidade II"),
("2", "11", "Equipamentos de Refrigeração Industrial"),
("2", "11", "Informática"),
("2", "11", "Instalações de Refrigeração"),
("2", "11", "Manutenção de Refrigeração Industrial"),
("2", "11", "Mecânica dos Fluídos"),
("2", "11", "Projeto Auxiliado por Computador"),
("2", "11", "Projeto de Refrigeração Doméstica e Comercial"),
("2", "11", "Projeto de Refrigeração Industrial"),
("2", "11", "Prática de Ar Condicionado"),
("2", "11", "Prática de Refrigeração Doméstica e Comercial"),
("2", "11", "Prática de Refrigeração Industrial"),
("2", "11", "Refrigeração Doméstica e Comercial"),
("2", "11", "Termologia"),
("3", "12", "Assistência de Enfermagem em Saúde Mental"),
("3", "12", "Educação Para a Saúde"),
("3", "12", "Enfermagem Cirúrgica"),
("3", "12", "Enfermagem Médica"),
("3", "12", "Enfermagem em Saúde Coletiva II"),
("3", "12", "Enfermagem em Urgências e Emergências"),
("3", "12", "Enfermagem na Saúde Coletiva I"),
("3", "12", "Enfermagem na Saúde da Mulher"),
("3", "12", "Enfermagem na Saúde da da Criança e do Adolescente"),
("3", "12", "Informatização do Trabalho para a Saúde"),
("3", "12", "Noções de Administração dos Serviços de Enfermagem"),
("3", "12", "Promoção da Biosegurança"),
("3", "12", "Semiotécnica"),
("3", "13", "Algorítimos e Programação"),
("3", "13", "Automação de Processos Industriais"),
("3", "13", "Cinemática dos Mecanismos"),
("3", "13", "Conformação Mecânica"),
("3", "13", "Cálculo I"),
("3", "13", "Cálculo II"),
("3", "13", "Cálculo III"),
("3", "13", "Cálculo IV"),
("3", "13", "Desenho Mecânico Auxiliado por Computador"),
("3", "13", "Desenhos Técnico e Geometria Descritiva"),
("3", "13", "Dinâmica das Máquinas"),
("3", "13", "Elementos de Máquinas I"),
("3", "13", "Elementos de Máquinas II"),
("3", "13", "Eletromagnetismo"),
("3", "13", "Eletrotécnica"),
("3", "13", "Energia Eólica"),
("3", "13", "Energia Solar"),
("3", "13", "Ensaios Calorimétricos"),
("3", "13", "Fontes Alternativas e Renováveis de Energia"),
("3", "13", "Instrumentação"),
("3", "13", "Introdução à Ciência Tecnologia dos Materiais"),
("3", "13", "Introdução à Engenharia"),
("3", "13", "Manutenção Industrial"),
("3", "13", "Materiais de Construção Mecânica"),
("3", "13", "Mecânica dos Fluídos"),
("3", "13", "Mecânica dos Sólidos"),
("3", "13", "Mecânica e Resistência dos Materiais"),
("3", "13", "Metodologia Científica"),
("3", "13", "Metrologia"),
("3", "13", "Motores de Combustão Interna"),
("3", "13", "Máquinas de Elevação e Transporte"),
("3", "13", "Máquinas de Fluxo"),
("3", "13", "Métodos Numéricos"),
("3", "13", "NOÇÕES DE LOGÍSTICA"),
("3", "13", "Optativa I - LIBRAS"),
("3", "13", "Optativa I - Projeto de Juntas Soldadas"),
("3", "13", "Optativa I - Tecnologia de Biocombustíveis"),
("3", "13", "Optativa II - Informática Industrial"),
("3", "13", "Optativa III - Sistemas de Refrigeração por Hidrocarbonetos"),
("3", "13", "Pesquisa Operacional"),
("3", "13", "Probabilidade e Estatística Aplicada"),
("3", "13", "Projeto Integrador"),
("3", "13", "Refrigeração Industrial I"),
("3", "13", "Refrigeração Industrial II"),
("3", "13", "Segurança Industrial"),
("3", "13", "Simulação Térmica"),
("3", "13", "Sistemas Hidráulicos e Pneumáticos"),
("3", "13", "Sistemas de Ventilação e Climatização"),
("3", "13", "Sistemas e Processos Termodinâmicos"),
("3", "13", "Tecnologia da Soldagem I"),
("3", "13", "Tecnologia da Soldagem II"),
("3", "13", "Trabalho de Conclusão de Curso"),
("3", "13", "Transferência de Calor"),
("3", "13", "Trocadores de Calor"),
("3", "13", "Usinagem dos Materiais"),
("3", "13", "Utilidades Industriais"),
("3", "13", "Álgebra Linear e Geometria Analítica II"),
("3", "13", "Álgebra Linear e Geometria Analítica II"),
("3", "13", "Ética Profissional"),
("3", "14", "Arquitetura e Projeto de Sistemas"),
("3", "14", "Banco de Dados"),
("3", "14", "Desenvolvimento de Aplicativos Embarcados"),
("3", "14", "Desenvolvimento para Web I"),
("3", "14", "Desenvolvimento para Web II"),
("3", "14", "Desenvolvimento para Web III"),
("3", "14", "Empreendimentos Empresariais"),
("3", "14", "Engenharia de Software"),
("3", "14", "Estrutura de Dados I"),
("3", "14", "Estrutura de Dados II"),
("3", "14", "Ferramenta de Desenvolvimento"),
("3", "14", "Fundamentos da Computação"),
("3", "14", "Fundamentos da Estatística"),
("3", "14", "Gerenciamento de Projetos de Software"),
("3", "14", "Interface Web"),
("3", "14", "Lógica de Programação"),
("3", "14", "Metodologia Científica"),
("3", "14", "Organização de Computadores"),
("3", "14", "Programação Orientada a Objetos"),
("3", "14", "Reconhecimento de Padrões"),
("3", "14", "Redes deComputadores"),
("3", "14", "Seminário I"),
("3", "14", "Seminário II"),
("3", "14", "Sistemas Operacionais"),
("3", "14", "Sistemas de Informação"),
("3", "15", "Automação Predial"),
("3", "15", "Climatização"),
("3", "15", "Concretos e Argamassas"),
("3", "15", "Conforto Ambiental"),
("3", "15", "Desempenho e Análise Térmica em Edificações"),
("3", "15", "Desenho Técnico e Arquitetônico"),
("3", "15", "Engenharia Econômica"),
("3", "15", "Estruturas Metálicas e de Madeira"),
("3", "15", "Estruturas de Concreto Armado"),
("3", "15", "Geometria da Insolação"),
("3", "15", "Iluminação Natural I"),
("3", "15", "Iluminação Natural II"),
("3", "15", "Instalações Prediais I"),
("3", "15", "Instalações Prediais II"),
("3", "15", "Instalações de Prevenção contra Incêndio"),
("3", "15", "Introdução ao Projeto Arquitetônico"),
("3", "15", "Libras"),
("3", "15", "Lógica de Programação"),
("3", "15", "Materiais de Construção Civil"),
("3", "15", "Mecânica Vetorial"),
("3", "15", "Mecânica dos Solos e Fundações"),
("3", "15", "Metodologia Científica"),
("3", "15", "Métodos Alternativos de Construção"),
("3", "15", "Planejamento, Orçamento e Controle de Obras"),
("3", "15", "Probabilidade e Estatística"),
("3", "15", "Projeto Arquitetônico"),
("3", "15", "Resistência dos Materiais"),
("3", "15", "Saúde e Segurança no Trabalho"),
("3", "15", "Seminário de Integração"),
("3", "15", "Topografia"),
("3", "15", "Trabalho de Conclusão de Curso"),
("3", "15", "Técnicas Construtivas I"),
("3", "15", "Técnicas Construtivas II");
