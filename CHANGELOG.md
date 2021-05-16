# CHANGELOG

## [15/05/2021] - João Vitor

###  ADDED
- Análise dos caso: AssinarRelatorio, Atualizar Informações dos Cadastros, Consultar Certificado;
- Análise dos casos: Consultar Edital, Enviar Comunicado, Enviar Notificações,Enviar Relatório,Gerar Certificado.
### MODIFIED

### REMOVED
- Diagrama de Classes Funcoes Gerais

## [15/05/2021] - Larissa e Samuel

###  ADDED
- Análise Candidato Aprovado
### MODIFIED
- Analise Candidato Classificado
### REMOVED

## [15/05/2021] - Larissa

###  ADDED
- Descrição dos Controladores de Candidato Classificado
- API de Aluno, Professor, etc.
### MODIFIED
- Git ignore com os arquivos da API
- Consultas e Inserts no DB
### REMOVED


## [15/05/2021] - Ester

###  ADDED
- Diagrama de casos de uso Candidato, ExMonitor
- Análise Consultar Ata, Consultar Sala, Corrigir Atividade, Criar Atividade, Entregar Atividade
- Diagrama de sequencia ciclo de vida atividade
### MODIFIED
- Fluxo de Consultar Ata
- Fluxo de Consultar Sala
- Atualização dos diagramas do doc (resultado da analise)
### REMOVED



## [13/05/2021] - João Vitor e Pedro Augusto

###  ADDED
- Diagrama de Classes Funções Gerais
### MODIFIED
- Fluxo do Caso de Uso Realizar Inscrição para Monitor
### REMOVED


## [13/05/2021] - Larissa

###  ADDED
- Indice e correções de espaçamento e erros ortográficos 
### MODIFIED

### REMOVED


## [12/05/2021] - Ester

###  ADDED
- Numeração dos requisitos funcionais
- Diagrama geral do sistema
- Requisitos não funcionais do sistema
- Fluxo de "Criar Atividade", "Corrigir Atividade", "Entregar Atividade"
- Diagrama de atividades Cadastro no SisMonitoria
- Diagrama de Sequencia Classificar Monitor
- Adições refletidas no documento
### MODIFIED
- Localização de alguns casos de uso em pacotes
- Relação de alguns casos de uso com atores
- Mudanças refletidas no documento
### REMOVED
- Caso de uso "Soliciar Sala para Monitoria"


## [11/05/2021] - Ester

###  ADDED
- Diagrama de casos de uso de negócios do ator "monitor"
- As subseções da seção 2 do documento, texto e diagramas
- Diagramas de caso de uso Monitor, NAPSI, Aluno, Professor no modelo de negócios e no de sistema
- Caso de uso "Criar Atividade", "Corrigir Atividade", "Entregar Atividade"
### MODIFIED
- Seção de conteúdo do documento, seção 1.4
- Nome do caso de uso de "Atualizar Informações dos Alunos" para "Atualizar Informações dos Cadastros"
- Fluxo de "Fazer Relatório", "Atualizar Informações dos Cadastros", "Assinar Relatório"
- Nome do pacote "CadastroMonitoria" para "ProcessoSeletivo" e conteúdo de casos de uso
- Conteudo do pacote "FuncoesGerais" e diagramas do pacote
- Fluxo de "Disponibilizar Lista de Classificados"
- Nome do pacote "CandidatoAprovado" para "PosProcessoSeletivo" e conteúdo de casos de uso
### REMOVED
- Caso de uso "Disponibilizar Sala para Monitoria"
- Caso "Fazer Relatório"


## [10-11/05/2021] - Ester

###  ADDED
- Importância, objetivos gerais, objetivos específicos e introdução no capítulo 1 do documento de requisitos
- Capa ao documento de requisitos
### MODIFIED

### REMOVED


## [08/05/2021] - Ester

###  ADDED
- Caso de uso "Alocar Sala"
- Adições feitas no .astah e refletidas no documento de requisitos
- Operações nas boundaries "TelaOfertarDisciplina", "TelaAprovarMonitor", 
- Operações nos controls "ControladorOfertarDisciplina", "ControladorAprovarMonitor", "ControladorClassificarMonitor", "ControladorAlocarSala"
- Operações nos cadastros de monitores, candidaturas, pendencias e monitorias
- Classe "CadastroPendencias"
- Entity "Pendencia"
- Caso de uso "Disponibilizar Lista de Candidatos"
### MODIFIED
- Nome de "Aprovar Pendência de Disciplina" para "Resolver Pendência de Disciplina"
- Fluxo de "Ofertar Disciplina", "Aprovar Monitor", "Classificar Monitor", "Aprovar Pendência de Disciplina"
- Diagrama de análise do pacote "Solicitar Monitor"
- Mudanças acima feitas no .astah e refletidas no documento de requisitos
- Análise do pacote Solicitar Monitor concluída
### REMOVED
- Caso de uso repetido no documento de requisitos
- Caso de uso "Enviar Lista de Candidatos"


## [07/05/2021] - Samuel

### ADDED

### MODIFIED
- Criação dos tópicos: Diagramas e Requisitos Não Funcionais
- Descrição e Adição dos pontos do Glossário  
- Ajuste na topificação e enumeração nos Requisitos Funcionais 

### REMOVED


## [07/05/2021] - Ester

###  ADDED
- Operações CRUD no "CadastroUsuario" na "Análise Cadastro SisMonitoria"
- Operações cadastrar(), cadastrar(infos) e autenticarSIGA(cpf) na "Análise Cadastro SisMonitoria"
- Tipos "Dicionario", "UsuarioAluno", "UsuarioProfessor" na "Análise Cadastro SisMonitoria"
### MODIFIED
- "Consultar Sala" movido de para FuncoesGerais
- Fluxo de "Consultar Sala", "Cadastrar no SisMonitoria"
- Análise do pacote "Cadastro SisMonitoria"
- Nome de "CadastroSisMonitoria" para "CadastroUsuarios"
- Nome "Cadastro no SisMonitoria" para "Usuario"
### REMOVED


## [06/05/2021] - João Vitor

###  ADDED
- Casos de uso "Aprovar Pendência de Disciplina", "Atualizar Informações dos Alunos", "Enviar Comunicado" , "Enviar Relatório", "Assinar Relatório", "Fazer Relatório"
### MODIFIED

### REMOVED


## [06/05/2021] - Larissa 

###  ADDED
- Inserts em Professor e Alunos
- Tabela certificado, monitor e candidatura
### MODIFIED
- Auto_Increment Primary Key
### REMOVED


## [04/05/2021] - João Vitor e Pedro

###  ADDED
- Casos "Solicitar Sala para Monitoria", "Disponibilizar Sala para Monitoria", "Consultar Certificado", "Gerar Certificado"
- Casos adicionados acima no documento de requisitos
### MODIFIED
- Fluxo dos casos "Solicitar Sala para Monitoria", "Disponibilizar Sala para Monitoriar"
### REMOVED


## [04/05/2021] - Ester

###  ADDED
- Casos "Enviar Lista de Aprovados", "Enviar Notificações"
- Casos adicionados acima no documento de requisitos
### MODIFIED
- Fluxo dos casos "Classificar Monitor", "Aprovar Monitor"
### REMOVED


## [02/05/2021] - Ester

###  ADDED
- Caso "Modificar Candidatura"
- Casos adicionados acima, ao documento de requisitos
- Classes na análise do pacote Candidato Classificado
- Operação consultarCandidatura na tela e no controlador relacionado
- Operações CRUD da coleção de entidades CadastroCandidatura, CadastroCandidaturaCancelada
### MODIFIED
- Fluxo de "Consultar Status da Candidatura"
- Fluxo de "Cadastrar no SisMonitoria"
- Fluxo de "Cancelar Candidatura"
- Nome de "Consultar Status da Candidatura" para "Consultar Candidatura"
- Nome de "CadastroCandidato" para "CadastroCandidatura"
- Casos modificados acima, no documento de requisitos
### REMOVED
- Remoção das relações entre "CadastroCandidatura" e "Candidato", "CandidaturaCancelada"


## [24/04/2021] - Larissa

###  ADDED
- Arquivo com a criação das Tabelas do Banco de Dados do SisMonitoria
- Arquivo para consultar a Tabela
- Arquivo para inserir Dados 

### MODIFIED

### REMOVED


## [24/04/2021] - Samuel

###  ADDED
- Adição do Sumário, Introdução Resumida e Descrição do Projeto
- Adição das Descrições, Atores, Fluxos, Pré/Pós Condições

### MODIFIED
- Atualização do layout do documento de Requisitos de Software
### REMOVED


## [24/04/2021] - Larissa

###  ADDED
- Fluxo de Consultar Sala
### MODIFIED
- Fluxo de excecção de Consultar Ata de Presneça
### REMOVED
- Fluxo antigo de Consultar Sala


## [23/04/2021] - Ester

###  ADDED
- Arquivo Documento de Requisitos - SisMonitoria.pdf
### MODIFIED
- Definição de alguns casos de uso
- Atualização do layout do documento de Requisitos de Software
### REMOVED
- Arquivo .astah repetido
- Arquivos .lock
- Arquivos .docx#


## [18/04/2021] - Samuel

###  ADDED
- Início do Documento de Requisitos de Software
### MODIFIED

### REMOVED


## [17/04/2021] - Ester

###  ADDED
- Casos de uso no modelo de negócios
- Ator "SistemaEmail"
- Ator "SistemaSIGA"
- Ator "SisMonitoria"
- Ator "SistemaDATP"
- Relação entre atores e casos de uso
### MODIFIED
- Definição de alguns casos de uso
### REMOVED
- Ator "Enviar Email"
- Atores repetidos nos pacotes contidos no SisMonitoria (modelo de projeto)


## [16/04/2021] - João Vitor e Pedro

###  ADDED
- Adicionei o caso de uso "candidatar-se para monitoria" no UseCase Diagram SisMonitoria
- Criação de algumas Class Diagrams
### MODIFIED
- Ajeitei algumas entidades e as coloquei em seus respectivos Class Diagram
- Modifiquei alguns detalhamentos
### REMOVED
- Definições iniciais nas operações presentes nos controladores


## [11/04/2021] - João Vitor e Pedro

###  ADDED
- Identificação das entidades
- Detalhamento de algumas entidades
### MODIFIED

### REMOVED


## [10/04/2021] - João Vitor e Pedro

###  ADDED
- Detalhamento dos usos de caso
- Identificação de algumas entidades
### MODIFIED

### REMOVED


## [01/04/2021] - Ester

###  ADDED
- Casos de uso ao diagrama de casos de uso do modelo de negócios
- Ator ExMonitor
- Navegação entre as relações
- Comentários no modelo de projeto
### MODIFIED

### REMOVED


## [31/03/2021]  - Larissa e Luiz

###  ADDED
- Criação dos pacotes para organizar melhor os casos de uso
### MODIFIED
- Enviar Email agora é um Agente Externo
### REMOVED


## [30/03/2021]  - Larissa e Luiz

###  ADDED

### MODIFIED
- Adicionamos um novo Ator ( Candidato )
### REMOVED


## [30/03/2021] - Larissa e Luiz

###  ADDED
- Caso de Uso de Negócio da Monitoria e Caso de Uso do SisMonitoria
### MODIFIED

### REMOVED


## [05/03/2021] - Larissa

###  ADDED
- Criação e configurações do repositório

### MODIFIED

### REMOVED
