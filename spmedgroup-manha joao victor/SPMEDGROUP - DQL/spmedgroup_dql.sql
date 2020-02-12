USE spMedGroupManha

--DQL

SELECT idMedico = 8
FROM medico
INNER JOIN consulta
ON consulta.idConsulta = medico.idMedico;

SELECT medico.crm , medico.email FROM consulta
INNER JOIN medico on consulta.idMedico = medico.idMedico
WHERE idConsulta = 6

SELECT situacao
FROM consulta
INNER JOIN medico
ON consulta.situacao = medico.idMedico;

SELECT * FROM consulta;
SELECT * FROM tipoUsuario;
SELECT * FROM clinica;
SELECT * FROM especialidade;
SELECT * FROM medico;
SELECT * FROM usuario;