USE spMedGroupManha

--DML

INSERT INTO tipoUsuario (tituloTipoUsuario)
VALUES	('Administrador'),
		('Usuario Comum'),
		('Medico');

INSERT INTO especialidade (nomeEspecialidade)
VALUES	('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia da M�o'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Tor�cica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');

INSERT INTO consulta (descricao, situacao, dataConsulta)