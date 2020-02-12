USE spMedGroupManha

--DML

INSERT INTO tipoUsuario (tituloTipoUsuario)
VALUES	('Administrador'),
		('Usuario Comum'),
		('Medico');

INSERT INTO clinica (nomeFantasia, CNPJ, endereco, telefone)
VALUES	('SP MED GROUP', '111.230.394-12', 'Alameda Barão de Limeira 539', '11-4958-1381');

INSERT INTO especialidade (nomeEspecialidade)
VALUES	('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia da Mão'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Torácica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');

INSERT INTO medico (nomeMedico, email, crm, senha, idTipoUsuario, idClinica, idEspecialidade)
VALUES	('ricardo.lemos@spmedicalgroup.com.br', '54356-SP', 'riclemos1', 1, 1, 2),
		('roberto.possarle@spmedicalgroup.com.br', '53452-SP', 'poposasa', 1, 1, 15),
		('helena.souza@spmedicalgroup.com.br', '65463-SP', 'heleninha', 1, 1, 14);

INSERT INTO usuario (idTipoUsuario, nomeUsuario, email, RG, CPF, senha, endereco, dataNasc)
VALUES	(2, 'Ligia', 'ligia@gmail.com', '43522543-5', '94839859000', 'ligiazinha', 'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000', '1983-10-13'),
		(2, 'Alexandre', 'alexandre@gmail.com', '32654345-7', '73556944057', 'xandao123', 'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200', '2001-07-23'),
		(2, 'Fernando', 'fernando@gmail.com', '54636525-3', '16839338002', 'fernandinhobeiramar', 'Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200', '1978-10-10'),
		(2, 'Henrique', 'henrique@gmail.com', '54366362-5', '14332654765', 'paodealho03', 'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030', '1985-10-13');

INSERT INTO consulta (idMedico, idUsuario, situacao, dataConsulta)
VALUES	(7, 5, 'Realizada', '2020-01-20 10:30:00'),
		(8, 6, 'Cancelada', '2020-01-06 12:00:00'),
		(8, 7, 'Realizada', '2020-02-07 14:00:00'),
		(9, 8, 'Agendada', '2020-03-09 16:30:00');

