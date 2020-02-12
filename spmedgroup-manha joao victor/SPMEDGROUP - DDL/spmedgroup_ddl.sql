CREATE DATABASE spMedGroupManha

USE spMedGroupManha

--DDL

CREATE TABLE tipoUsuario
	(
		idTipoUsuario		INT PRIMARY KEY IDENTITY,
		tituloTipoUsuario	VARCHAR(255),
	);

CREATE TABLE especialidade
	(
		idEspecialidade     INT PRIMARY KEY IDENTITY,
		nomeEspecialidade	VARCHAR(255),
	);

CREATE TABLE clinica
	(
		idClinica			INT PRIMARY KEY IDENTITY,
		nomeFantasia		VARCHAR(255),
		CNPJ				CHAR(14),
		endereco			VARCHAR(255),
		telefone			VARCHAR(15),
		horarioFunc			TIME
	);

CREATE TABLE medico
	(
		idMedico			INT PRIMARY KEY IDENTITY,
		nomeMedico			VARCHAR(255),
		email				VARCHAR(255),
		crm					VARCHAR(100),
		senha				VARCHAR(255),
		idTipoUsuario		INT FOREIGN KEY REFERENCES tipoUsuario (idTipoUsuario),
		idClinica			INT FOREIGN KEY REFERENCES clinica (idClinica),
		idEspecialidade		INT FOREIGN KEY REFERENCES especialidade(idEspecialidade)
	);

	SELECT * FROM medico

CREATE TABLE usuario
	(
		idUsuario			INT PRIMARY KEY IDENTITY,
		nomeUsuario			VARCHAR(255),
		email				VARCHAR(255),
		RG					VARCHAR(255),
		CPF					VARCHAR(255),
		senha				VARCHAR(255),
		endereco			VARCHAR(255),
		dataNasc			DATE,
		idTipoUsuario		INT FOREIGN KEY REFERENCES tipoUsuario (idTipoUsuario)
	);

CREATE TABLE consulta
	(
		idConsulta			INT PRIMARY KEY IDENTITY,
		situacao			VARCHAR(255),
		dataConsulta		DATETIME2,
		idUsuario			INT FOREIGN KEY REFERENCES usuario (idUsuario),
		idMedico			INT FOREIGN KEY REFERENCES medico (idMedico)
	);

	DROP TABLE consulta;

	