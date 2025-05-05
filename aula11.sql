USE clinica_medica;
SELECT * FROM agendamentos;
-- EXIBIR TODOS OS PACIENTES CADASTRADOS NO BD --
SELECT count(id) as "Total de Pacientes" from pacientes;

DESC medicos;
-- CADASTRANDO UM NOVO MÉDICO
select * from medicos;
INSERT INTO medicos(nome,especialidade,crm,email)
 VALUES ("Crispiano Orispildo,","pediatria","CRM 55667",
 "crispildo@gmail.com");

-- EXIBIR A QUANTIDADE DE MEDICOS OFTALMOLOGISTAS --
SELECT especialidade,count(id) from medicos
where especialidade = "pediatria";
-- EXIBIR A QUANTIDADE DE MEDICOS POR ESPECIALIDADE --
SELECT especialidade,count(id) as "Quantidade" from medicos
group by especialidade;
desc agendamentos;
-- Idade dos pacientes
SELECT nome, YEAR(curdate())- year(data_nascimento) as "idade"
from pacientes;
-- EXIBIR A IDADE MÉDIA PACIENTE
SELECT AVG(YEAR(CURDATE())-YEAR(data_nascimento))"idade média"
from pacientes;

-- QUANTIDADE DE CONSULTAS POR MÉDICO
SELECT medicos.nome, count(agendamentos.id)from
medicos left join agendamentos on medicos.id = agendamentos.medico_id
group by medicos.nome;

-- CADASTRANDO NOVA CONSULTA (AGENDAMENTO) PARA UM MÉDICO
INSERT INTO agendamentos(paciente_id, medico_id, data_hora,
tipo_consulta, status)
VALUES(1,1,"2025-05 10:00","consulta de rotina","realizada");

-- EXIBIR O MÉDICO COM MAIS CONSULTAS
SELECT medicos.nome, COUNT(agendamentos.id) as tot_consultas from
medicos join agendamentos on medicos.id = agendamentos.medico_id  
and count(agendamentos.id)= MAX(count(agendamentos.id));



















