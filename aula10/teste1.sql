use clinica_medica;
show tables;
desc pacientes;
select * from pacientes;
select * from medicos;
select * from agendamentos;
-- listar os pacientes nascidos depois de 01-01-1990
select nome,data_nascimento,telefone from pacientes
where data_nascimento > "1990-01-01";

-- LISTAR PARA CADA CONSULTA,O NOME DO MEDICO,DATA E TIPO 
SELECT medicos.nome,agendamentos.data_hora, agendamentos.tipo_consulta
from medicos left join agendamentos on medicos.id=agendamentos.medico_id;

-- listar as consultas incluindo o nome do paciente e do medico
SELECT pacientes.nome,medicos.nome, agendamentos.data_hora,
agendamentos.tipo_consulta from pacientes join agendamentos on
pacientes.id = agendamentos.paciente_id join medicos on 
medicos.id = agendamentos.medico_id;

