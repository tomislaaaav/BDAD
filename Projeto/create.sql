.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS EXTRAS;
DROP TABLE IF EXISTS TIPO_VEICULO;
DROP TABLE IF EXISTS MODELO_VEICULO;
DROP TABLE IF EXISTS MARCA_VEICULO;
DROP TABLE IF EXISTS ESTADO_ATUAL;
DROP TABLE IF EXISTS TIPO_COMBUSTIVEL;
DROP TABLE IF EXISTS VEICULO;

DROP TABLE IF EXISTS TIPO_CONTRATO;
DROP TABLE IF EXISTS CATEGORIA_SALARIAL;
DROP TABLE IF EXISTS ESPECIALIZACAO;
DROP TABLE IF EXISTS POSICAO_EMPRESA;
DROP TABLE IF EXISTS CODIGO_POSTAL;
DROP TABLE IF EXISTS LOCALIDADE;
DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS FUNCIONARIO;
DROP TABLE IF EXISTS ALUGUER;
DROP TABLE IF EXISTS TAXA_RISCO;
DROP TABLE IF EXISTS FRANQUIA;


--CREATE TABLES
CREATE TABLE EXTRAS (
	id_extras INTEGER NOT NULL PRIMARY KEY,
	Ar_condicionado BOOLEAN NOT NULL,
	Caixa_velocidades TEXT NOT NULL,
	Cruise_control BOOLEAN NOT NULL,
	Nr_portas INTEGER NOT NULL,
	Sensores_estacionamento BOOLEAN NOT NULL,
	Teto_panoramico BOOLEAN NOT NULL,
	Tipo_estofos TEXT NOT NULL,
	Vidros_eletricos BOOLEAN NOT NULL,
	UNIQUE (id_extras),
	CHECK (id_extras >= 0 AND Nr_portas >= 0)
);

CREATE TABLE TIPO_VEICULO (
	Designacao_veiculo TEXT NOT NULL PRIMARY KEY,
	UNIQUE (Designacao_veiculo)
);

CREATE TABLE MODELO_VEICULO (
	Ano_producao INTEGER NOT NULL
		CHECK (Ano_producao > 1876),
	Nome_modelo TEXT NOT NULL PRIMARY KEY,
	Nome_marca TEXT NOT NULL REFERENCES MARCA_VEICULO(Nome_marca)
);

CREATE TABLE MARCA_VEICULO(
	Nome_marca TEXT NOT NULL PRIMARY KEY,
	UNIQUE (Nome_marca)
);

CREATE TABLE ESTADO_ATUAL(
	Nome_estado TEXT NOT NULL PRIMARY KEY,
	UNIQUE (Nome_estado)
);

CREATE TABLE TIPO_COMBUSTIVEL(
	Nome_combustivel TEXT NOT NULL PRIMARY KEY,
	UNIQUE (Nome_combustivel)
);

CREATE TABLE VEICULO(
	Matricula TEXT NOT NULL PRIMARY KEY,
	Consumo REAL NOT NULL
		CHECK(Consumo > 0),
	Preco_aluguer INTEGER
		CHECK(Preco_aluguer > 0),
	Nome_modelo TEXT REFERENCES MODELO_VEICULO(Nome_modelo),
	Nome_estado TEXT REFERENCES ESTADO_ATUAL(Nome_estado),
	Designacao_veiculo TEXT REFERENCES TIPO_VEICULO(Designacao_veiculo),
	Nome_combustivel TEXT REFERENCES TIPO_COMBUSTIVEL(Nome_combustivel),
	id_extras INTEGER REFERENCES EXTRAS(id_extras)
);

CREATE TABLE TIPO_CONTRATO(
	Designacao_contrato TEXT NOT NULL PRIMARY KEY,
		UNIQUE (Designacao_contrato)
);

CREATE TABLE CATEGORIA_SALARIAL(
	id_Categoria_Salarial INTEGER PRIMARY KEY,
	Montante INTEGER NOT NULL
		CHECK (Montante > 0),
		UNIQUE (id_Categoria_Salarial)
	
);

CREATE TABLE ESPECIALIZACAO(
	Nome_especializacao TEXT NOT NULL PRIMARY KEY,
		UNIQUE(Nome_especializacao)
);

CREATE TABLE POSICAO_EMPRESA(
	Nome_posicao TEXT NOT NULL PRIMARY KEY,
		UNIQUE(Nome_posicao)
);

CREATE TABLE CODIGO_POSTAL(
	Nome_postal TEXT NOT NULL PRIMARY KEY,
		UNIQUE(Nome_postal)
);

CREATE TABLE LOCALIDADE(
	Nome_localidade TEXT NOT NULL PRIMARY KEY,
		UNIQUE(Nome_localidade)
);

CREATE TABLE PESSOA(
	Telefone Integer NOT NULL PRIMARY KEY,
	Morada TEXT NOT NULL,
	Nome_pessoa TEXT NOT NULL,
	Nome_localidade REFERENCES LOCALIDADE(Nome_localidade),
	Nome_postal REFERENCES CODIGO_POSTAL(Nome_postal),
		UNIQUE(Telefone)
);

CREATE TABLE CLIENTE(
	NIF INTEGER NOT NULL PRIMARY KEY,
	Telefone INTEGER NOT NULL,
	E_mail TEXT NOT NULL,
	FOREIGN KEY(Telefone) REFERENCES PESSOA(Telefone)
);

CREATE TABLE FUNCIONARIO(
	NIB TEXT NOT NULL PRIMARY KEY,
	Telefone INTEGER NOT NULL,
	Designacao_contrato TEXT REFERENCES TIPO_CONTRATO(Designacao_contrato),
	id_Categoria_Salarial INTEGER REFERENCES CATEGORIA_SALARIAL(id_Categoria_Salarial),
	Nome_posicao TEXT REFERENCES POSICAO_EMPRESA(Nome_posicao),
	Nome_especializacao TEXT REFERENCES ESPECIALIZACAO(Nome_especializacao),
	FOREIGN KEY(Telefone) REFERENCES PESSOA(Telefone),
		UNIQUE(NIB)
);


CREATE TABLE ALUGUER(
	id_aluguer INTEGER NOT NULL PRIMARY KEY,
	Custo_total INTEGER NOT NULL
		CHECK (Custo_total > 0),
	Data_de_fim DATE NOT NULL,
	Data_de_inicio DATE NOT NULL CHECK (Data_de_inicio <= Data_de_fim),
	Veiculo INTEGER NOT NULL,
	NIB TEXT NOT NULL REFERENCES FUNCIONARIO(NIB),
	NIF INTEGER NOT NULL REFERENCES CLIENTE(NIF),
	FOREIGN KEY(Veiculo) REFERENCES VEICULO(Matricula),
		UNIQUE(id_aluguer)
);


CREATE TABLE TAXA_RISCO(
	Valor_risco INTEGER NOT NULL
		CHECK(Valor_risco > 0),
	NIF INTEGER NOT NULL,
	id_aluguer INTEGER,
	FOREIGN KEY(NIF) REFERENCES CLIENTE(NIF),
	FOREIGN KEY(id_aluguer) REFERENCES ALUGUER(id_aluguer),
	PRIMARY KEY (NIF, id_aluguer)
);


CREATE TABLE FRANQUIA(
	Valor_franquia INTEGER NOT NULL
		CHECK(Valor_franquia > 0),
	Matricula TEXT NOT NULL,
	id_aluguer INTEGER,
	FOREIGN KEY(Matricula) REFERENCES VEICULO(Matricula),
	FOREIGN KEY(id_aluguer) REFERENCES ALUGUER(id_aluguer),
	PRIMARY KEY (Matricula, id_aluguer)
);